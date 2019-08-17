class CreateMaxWeights < ActiveRecord::Migration[5.2]
	def change
		create_table :max_weights do |t|
			t.integer :max_squat 
			t.integer :max_bench
			t.integer :max_deadlift
			t.integer :user_id
			t.timestamps
		end
		add_index :max_weights, :user_id
	end
end
