class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :type
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :organization
      t.string :address

      t.timestamps
    end
  end
end
