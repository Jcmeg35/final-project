class RfpsController < ApplicationController

  def show

  end

  def new
    @rfp = Rfp.new
    @product = Product.new
     @characteristics2 = Characteristics2.new
  end

  def create
    @rfp = Rfp.new(rfp_params)
    @product = Product.new(product_params)
    @characteristics2 = Characteristics2.new(characteristics2_params)
  end

end

