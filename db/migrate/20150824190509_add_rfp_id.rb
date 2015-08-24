class AddRfpId < ActiveRecord::Migration
  def change
    add_column :products, :rfp_id, :integer
  end
end
