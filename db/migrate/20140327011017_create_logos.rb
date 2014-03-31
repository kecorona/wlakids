class CreateLogos < ActiveRecord::Migration
  def change
    create_table :logos do |t|
      t.string :vendor
      t.string :level
      t.boolean :printed
      t.date :sponsor_banner
      t.text :comments

      t.timestamps
    end
  end
end
