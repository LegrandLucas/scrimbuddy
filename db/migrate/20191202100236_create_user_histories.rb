class CreateUserHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :user_histories do |t|
      t.references :user, foreign_key: true
      t.integer :team_one_kills
      t.integer :team_two_kills
      t.time :duration
      t.string :winner
      t.string :team_one_champions
      t.string :team_two_champions
      t.string :team_one_players
      t.string :team_two_players

      t.timestamps
    end
  end
end
