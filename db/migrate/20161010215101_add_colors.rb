class AddColors < ActiveRecord::Migration[5.0]
  def change
    add_column :colors, :color_travel, :string
    add_column :colors, :color_work, :string
    add_column :colors, :color_labs, :string
    add_column :colors, :color_lectures, :string
    add_column :colors, :color_seminars, :string
    add_column :colors, :color_nonactive_lessons, :string
  end
end
