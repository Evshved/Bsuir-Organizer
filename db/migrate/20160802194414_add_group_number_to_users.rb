class AddGroupNumberToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :number_of_group, :string
  end
end
