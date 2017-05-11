class AddMiddleToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :middle, :string
  end
end
