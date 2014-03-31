class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.integer :tier_no
      t.string :line_of_business
      t.string :wla_contact
      t.string :contact_first
      t.string :contact_last
      t.string :email
      t.date :date_std
      t.date :date_invite
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
