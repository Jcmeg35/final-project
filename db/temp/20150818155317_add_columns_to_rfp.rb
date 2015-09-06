class AddColumnsToRfp < ActiveRecord::Migration
  def change
    #add_column :rfps, :product_id, :integer
    add_column :rfps, :user_id, :integer
    #add_column :products, :characteristics, :integer
  end
end

