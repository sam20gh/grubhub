class AddPasswordToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :encrypted_password, :string
    add_column :customers, :salt, :string
    add_column :customers, :is_admin, :boolean, default: false
  end
end
