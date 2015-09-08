class ChangeUsersIdOnBidsTable < ActiveRecord::Migration
  def change
    rename_column :bids, :users_id, :user_id
  end
end
