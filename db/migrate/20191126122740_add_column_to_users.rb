class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :pseudo, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :user_type, :string
    add_column :users, :season_wins, :integer
    add_column :users, :season_losses, :integer
    add_column :users, :rank, :string
    add_column :users, :league_points, :integer
    add_column :users, :lol_account, :string
    add_column :users, :most_used_champions, :string
  end
end
