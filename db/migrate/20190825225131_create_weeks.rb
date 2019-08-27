class CreateWeeks < ActiveRecord::Migration[5.2]
	def change
		create_table :weeks do |t|
			t.string :week_name
			t.integer :title_id
			t.integer :user_id
			t.integer :program_name_id
			t.timestamps
		end
		add_index :weeks, :user_id
		add_index :weeks, :program_name_id
	end
end
