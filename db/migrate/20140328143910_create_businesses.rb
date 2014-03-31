class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :business_line
      t.references :member, index: true

      t.timestamps
    end
  end
end
