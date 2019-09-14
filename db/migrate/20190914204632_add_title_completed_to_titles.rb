class AddTitleCompletedToTitles < ActiveRecord::Migration[5.2]
  def change
    add_column :titles, :title_completed, :boolean, default: false
  end
end
