class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firs_name, :string
    add_column :users, :last_name, :string
    add_column :users, :company, :string
    add_column :users, :title, :string
    add_column :users, :market_position, :string
    add_column :users, :country, :string
    add_column :users, :postal_code, :integer
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :phone, :varchar
  end
end
