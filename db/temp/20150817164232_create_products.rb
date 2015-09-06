class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :commodity
    end
  end
end
