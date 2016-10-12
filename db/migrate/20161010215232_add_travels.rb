class AddTravels < ActiveRecord::Migration[5.0]
  def change
    add_column :travels, :id_of_week, :integer
    add_column :travels, :weekday, :integer
    add_column :travels, :time_of_travel, :integer
    add_column :travels, :note, :string
  end
end
