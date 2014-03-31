class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.references :business, index: true
      t.string :phone
      t.string :location
      t.string :email
      t.references :immediate_manager, index: true
      t.boolean :new_member

      t.timestamps
    end
  end
end
