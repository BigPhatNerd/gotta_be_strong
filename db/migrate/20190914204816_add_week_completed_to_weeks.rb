class AddWeekCompletedToWeeks < ActiveRecord::Migration[5.2]
  def change
    add_column :weeks, :week_completed, :boolean, default: false
  end
end
