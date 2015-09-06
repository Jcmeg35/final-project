class RemoveConstraintFromSpec < ActiveRecord::Migration
  def change
    change_column :specs, :name, :string, :null => true
  end
end
