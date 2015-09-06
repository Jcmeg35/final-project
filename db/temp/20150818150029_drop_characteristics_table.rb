class DropCharacteristicsTable < ActiveRecord::Migration
  def up
    drop_table :characteristics
  end
end
