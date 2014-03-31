class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :first_name
      t.string :last_name
      t.references :business, index: true
      t.string :phone
      t.string :email
      t.string :location

      t.timestamps
    end
  end
end
