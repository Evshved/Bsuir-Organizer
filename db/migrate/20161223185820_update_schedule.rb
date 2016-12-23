class UpdateSchedule < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :name_of_subject, :string
    change_column :schedules, :weekday, :string
  end
end
