class ProductsController < ApplicationController



  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:commodity)
    end
  end

end
