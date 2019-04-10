class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :username
      t.string :bio
      t.date :dob

      t.timestamps
    end
  end
end
