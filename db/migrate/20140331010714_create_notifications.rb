class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :mail_to
      t.string :mail_from
      t.string :subject
      t.string :attachment

      t.timestamps
    end
  end
end
