class RfpsController < ApplicationController

  def index
    @rfps = Rfp.order(end_date: :desc).paginate(page: params[:page], per_page: 20)
  end

  def new
    @rfp = Rfp.new
    @product = Product.new
    6.times { @product.specs.build }
    @rfp.product = @product
  end

  def create
    @rfp = Rfp.new(rfp_params)
    if @rfp.save!
      p "yay"
      redirect_to @rfp, alert: "RFP Successfully created"
    else 
      render :action => new
    end
  end

  def edit
    @rfp = Rfp.find(params[:id])
    @spec = Spec.all

  end

  def show
    @rfp = Rfp.find(params[:id])
  end

  def destroy
    
  end  

  private

    def rfp_params
      end_date = params[:rfp][:end_date]
      delivery_date = params[:rfp][:end_date]
      params[:rfp][:end_date] = Date.strptime(end_date, "%m/%d/%Y")
      params[:rfp][:delivery_date] = Date.strptime(delivery_date, "%m/%d/%Y")

      params.require(:rfp).permit(:end_date, :contract_length, :delivery_frequency, 
                                  :delivery_date, :delivery_type, :order_size,
                                  :product_attributes => [:commodity,
                                                          :specs_attributes => [:name,
                                                                                :limit,
                                                                                :unit,
                                                                                :type,
                                                                                :value,
                                                                                :test_method_reference]]).merge(user_id: current_user.id)
    end

end

