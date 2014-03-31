class RemoveImmediateManagerFromMember < ActiveRecord::Migration
  def up
  	change_table :members do |t|
  		t.references :manager, index: true
  	end
  end

  def down
  	change_table :members do |t|
  		t.remove :immediate_manager_id, index: true
  	end
  end
end
