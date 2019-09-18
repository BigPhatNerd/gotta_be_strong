class RemoveUserIdfromTitles < ActiveRecord::Migration[5.2]
  def change
  	remove_column :titles, :user_id, :integer
  end
end
