class ChangeCharacterstics2sName < ActiveRecord::Migration
  def change
    rename_table :characteristics2s, :characteristics2
  end
end
