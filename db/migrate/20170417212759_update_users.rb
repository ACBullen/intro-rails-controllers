class UpdateUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username, :string, null: false
    remove_column :users, :name, :text
    remove_column :users, :email, :text

    add_index :users, :username, unique: true
  end
end
