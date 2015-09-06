class CreateCharacteristics < ActiveRecord::Migration
  def change
    create_table :characteristics do |t|
      t.decimal :density, null: false
      t.decimal :viscosity, null: false
      t.integer :flash_point
      t.integer :pour_point 
      t.decimal :sulfur, null: false
      t.integer :centane_index
      t.decimal :ash 
      t.decimal :water
      t.integer :vandium 
      t.integer :aluminum_plus_silicon
      t.integer :zinc
      t.integer :phosphorus
      t.integer :calcium
    end
  end
end
