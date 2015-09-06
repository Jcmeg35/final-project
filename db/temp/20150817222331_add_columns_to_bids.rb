class AddColumnsToBids < ActiveRecord::Migration
  def change
    add_column :bids, :rfp_id, :integer
    add_column :bids, :users_id, :integer
  end
end
