class UpdateScheduleColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :active, :string
    change_column :schedules, :number_of_audience, :string
  end
end
