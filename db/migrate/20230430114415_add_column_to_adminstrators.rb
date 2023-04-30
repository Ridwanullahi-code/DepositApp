class AddColumnToAdminstrators < ActiveRecord::Migration[7.0]
  def change
    add_column :adminstrators, :confirmed_at, :datetime
    add_column :adminstrators, :confirmation_token, :string
    add_column :adminstrators, :confirmation_sent_at, :datetime
    add_column :adminstrators, :unconfirmed_email, :string
  end
end
