class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string  :number_of_group
      t.integer :id_group_api
      t.timestamps
    end
  end
end

