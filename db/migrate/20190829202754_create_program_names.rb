class CreateProgramNames < ActiveRecord::Migration[5.2]
  def change
    create_table :program_names do |t|
t.string :program_name
t.integer :user_id
      t.timestamps
    end
    add_index :program_names, :user_id
  end
end
