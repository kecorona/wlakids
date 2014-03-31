class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :foursome
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :shirt_size
      t.string :rental_clubs
      t.text :comments
      t.boolean :dinner_attendance

      t.timestamps
    end
  end
end
