class RfpsController < ApplicationController

  def show

  end

  def new
    @rfp = Rfp.new
    @product = Product.new
    @spec = Spec.new
  end

  def create
    @rfp = Rfp.new(rfp_params)
    @product = Product.new(product_params)
    @spec = Spec.new(characteristics2_params)
  end

end

