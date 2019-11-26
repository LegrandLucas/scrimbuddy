class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :pseudo, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :user_type, :string
    add_column :users, :lol_account, :string
  end
end
