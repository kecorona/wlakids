class RemoveImmediateManagerIdFromMembers < ActiveRecord::Migration
  def change
  	remove_reference :members, :immediate_manager
  end
end
