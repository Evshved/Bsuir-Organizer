class AddNumberOfGroupToLesson < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :id_of_group, :string
  end
end
