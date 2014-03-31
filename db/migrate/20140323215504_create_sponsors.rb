class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :level
      t.integer :member_id
      t.string :contact_first
      t.string :contact_last
      t.string :phone
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
