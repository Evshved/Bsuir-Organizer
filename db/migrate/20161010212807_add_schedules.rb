class AddSchedules < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :id_of_week, :integer
    add_column :schedules, :weekday, :integer
    add_column :schedules, :time_of_subject, :string
    add_column :schedules, :type_of_subject, :string
    add_column :schedules, :id_of_subgroup, :integer
    add_column :schedules, :number_of_audience, :integer
    add_column :schedules, :teacher, :string
    add_column :schedules, :note, :string
  end
end
