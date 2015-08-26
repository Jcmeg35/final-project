class RfpsController < ApplicationController

   

  def index
    @rfps = Rfp.order(end_date: :desc).paginate(page: params[:page], per_page: 20)
  end

  def new
    @rfp = Rfp.new
    @product = Product.new
    @spec = Specs::Density.new name: 'test'
    @product.specs << @spec
    @product.save
    @rfp.product = @product
  end

  def create
    @rfp = Rfp.new(rfp_params)
    if @rfp.save
      redirect_to @rfp, alert: "RFP Successfully created"
    else 
      render :action => new
    end
  end

  def show
    @rfp = Rfp.find(params[:id])
  end

  private

    def rfp_params
      params.require(:rfp).permit(:end_date, :contract_length, :delivery_frequency, 
                                  :delivery_date,
                                  :product_attributes => [:commodity,
                                                          :specs_attributes => [:name,
                                                                                :limit,
                                                                                :type,
                                                                                :value,
                                                                                :test_method_reference]])
    end

end

