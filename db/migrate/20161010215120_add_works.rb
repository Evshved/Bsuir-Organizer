class AddWorks < ActiveRecord::Migration[5.0]
  def change
    add_column :works, :id_of_week, :integer
    add_column :works, :weekday, :integer
    add_column :works, :time_of_work, :integer
    add_column :works, :note, :string
  end
end
