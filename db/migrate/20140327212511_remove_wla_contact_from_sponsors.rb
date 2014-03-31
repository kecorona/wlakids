class RemoveWlaContactFromSponsors < ActiveRecord::Migration
  def change
    remove_column :sponsors, :wla_contact, :string
  end
end
