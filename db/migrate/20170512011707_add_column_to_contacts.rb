class AddColumnToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :home_address, :string
  end
end
