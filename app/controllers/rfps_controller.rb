class RfpsController < ApplicationController

  def new
    @rfp = Rfp.new
    @product = Product.new
    @spec = Specs::Density.new name: 'test'
    @product.specs << @spec
    @product.save
    @rfp.product = @product
  end

  def create
    @rfp = Rfp.new(params[:rfp])
    @product = Product.new(params[:product])
    @spec = Spec.new(params[:spec])
    if @rfp.save
      flash[:notice] = "Successfully created new RFP."
      redirect_to @rfp, alert: "RFP Successfully created"
    else 
      render :action => new
    end
  end

  def show
    @rfp = RFP.find(params[:id])
    @product = Product.find(params[:id])
    @spec = Spec.find(params[:id])
  end


end

