class RemoveTitleandUserfromWeeks < ActiveRecord::Migration[5.2]
  def change
  	remove_column :weeks, :title_id, :integer
    remove_column :weeks, :user_id, :integer
  end
end
