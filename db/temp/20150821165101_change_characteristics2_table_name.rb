class ChangeCharacteristics2TableName < ActiveRecord::Migration
  def change
    rename_table :characteristics2, :specs
  end
end
