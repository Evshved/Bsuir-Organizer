class AddStatusEmptyToGroup < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :empty, :string
  end
end
