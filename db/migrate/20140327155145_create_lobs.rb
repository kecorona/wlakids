class CreateLobs < ActiveRecord::Migration
  def change
    create_table :lobs do |t|
      t.string :lob
      t.references :member

      t.timestamps
    end
  end
end
