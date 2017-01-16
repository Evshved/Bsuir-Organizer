class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
     t.integer :id_of_week
     t.string  :weekday
     t.string  :start_time_class
     t.string  :end_time_class
     t.string  :name_of_subject
     t.string  :type_of_subject
     t.integer :id_of_subgroup
     t.string  :number_of_audience
     t.string  :teacher
     t.string  :note
     t.timestamps
    end
  end
end
