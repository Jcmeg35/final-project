class RemoveChacteristicsColumnOnProducts < ActiveRecord::Migration
  def change
    remove_column :products, :chatacteristics
    add_column :specs, :product_id, :integer
  end
end
