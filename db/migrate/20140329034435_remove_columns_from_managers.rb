class RemoveColumnsFromManagers < ActiveRecord::Migration
  def change
  	remove_column :managers, :phone
  	remove_column :managers, :email
  	remove_column :managers, :location
  end
end
