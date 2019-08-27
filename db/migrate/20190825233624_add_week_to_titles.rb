class AddWeekToTitles < ActiveRecord::Migration[5.2]
	def change
		add_column :titles, :week_id, :integer		
		add_index :titles, :week_id
	end
end
