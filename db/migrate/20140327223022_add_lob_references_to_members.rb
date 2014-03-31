class AddLobReferencesToMembers < ActiveRecord::Migration
  def change
    add_column :members, :add_lob_to_member, :string
    add_reference :members, :lob, index: true
  end
end
