class AddBodyToNotifications < ActiveRecord::Migration
  def change
  	add_column :notifications, :body, :text
  end
end
