class CreateTitles < ActiveRecord::Migration[5.2]
	def change
		create_table :titles do |t|
			t.string :title
			t.integer :user_id
			t.timestamps
		end
		add_index :titles, :user_id
	end
end
