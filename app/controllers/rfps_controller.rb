class RfpsController < ApplicationController

  def show
    @rfp = RFP.find(params[:id])
  end

  def new
    @rfp = Rfp.new
    @product = Product.new
    @rfp.product = @product
    @spec = Spec.new
    @product.specs << @spec
  end

  def create
    @rfp = Rfp.new(params[:rfp])
    @product = Product.new(params[:product])
    @spec = Spec.new(params[:spec])
    if @rfo.save
      flash[:notice] = "Successfully created new RFP."
      redirect_to @rfp
    else 
      render :action => new
    end
  end

end

