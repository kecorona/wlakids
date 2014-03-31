class AddColumnsToVendors < ActiveRecord::Migration
  def change
  	add_column :vendors, :contact2_first, :string
  	add_column :vendors, :contact2_last, :string
  	add_column :vendors, :email2, :string
  	add_column :vendors, :phone2, :string
  	add_column :vendors, :address2, :string
  	add_column :vendors, :city, :string
  	add_column :vendors, :state, :string
  	add_column :vendors, :zip, :string
  end
end