class AddSettings < ActiveRecord::Migration[5.0]
  def change
    add_column :settings, :beginning_of_work, :string
    add_column :settings, :end_of_work, :string
    add_column :settings, :time_home_to_work, :integer
    add_column :settings, :time_work_to_univer, :integer
    add_column :settings, :time_univer_to_home, :integer
    add_column :settings, :min_work_time, :integer
  end
end
