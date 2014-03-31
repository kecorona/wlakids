class RemoveColumnsFromVendors < ActiveRecord::Migration
  def change
  	remove_column :vendors, :date_std
  	remove_column :vendors, :date_invite
  end
end
