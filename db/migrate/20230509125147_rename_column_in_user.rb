class RenameColumnInUser < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :user_id, :unique_id
  end
end
