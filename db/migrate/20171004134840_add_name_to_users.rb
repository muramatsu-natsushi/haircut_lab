class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :is_admin, :boolean, default: false, null: false
  end
end
