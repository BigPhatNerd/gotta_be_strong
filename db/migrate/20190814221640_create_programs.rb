class CreatePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|

t.string :exercise
t.integer :sets
t.integer :reps
t.integer :intensity
t.integer :prescribed_load
t.integer :actual_load
t.integer :tempo
t.integer :rest
t.text :notes
t.integer :title_id
t.boolean :exercise_completed, default: false
t.boolean :workout_completed, default: false


      t.timestamps
    end
    add_index :programs, :title_id
  end
end
