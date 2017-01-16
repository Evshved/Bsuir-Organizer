class CreateWeeks < ActiveRecord::Migration[5.0]
  def change
    create_table :weeks do |t|
      t.string  :date
      t.integer :number_of_week
      t.timestamps
    end
  end
end
