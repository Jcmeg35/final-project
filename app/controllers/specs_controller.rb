class SpecsController < ApplicationController

  private

    def set_spec
      @spec = Spec.find(params[:id])
    end

    def spec_params
      params.require(:type, :name, :unit, :limit, :test_method_reference, 
                     :value, :appearance, :created_at, :updated_at, :product_id)

    end


  end
end
