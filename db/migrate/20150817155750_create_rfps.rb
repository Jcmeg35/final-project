class CreateRfps < ActiveRecord::Migration
  def change
    create_table :rfps do |t|
      t.string :delivery_type
      t.datetime :delivery_date
      t.datetime :end_date
      t.datetime :start_date
      t.decimal :order_size
      t.integer :contract_length
      t.integer :delivery_frequency
      t.integer :ship_size
    end
  end
end
