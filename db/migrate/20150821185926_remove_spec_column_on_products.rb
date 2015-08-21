class RemoveSpecColumnOnProducts < ActiveRecord::Migration
  def change
    remove_column :products, :specs
  end
end
