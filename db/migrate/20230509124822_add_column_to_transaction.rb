class AddColumnToTransaction < ActiveRecord::Migration[7.0]
  def change
    add_column :transactions, :unique_id, :string
  end
end
