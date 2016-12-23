class UpdateLessonsTime < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :start_time_class, :string
    add_column :schedules, :end_time_class, :string
    remove_column :schedules, :time_of_subject
  end
end
