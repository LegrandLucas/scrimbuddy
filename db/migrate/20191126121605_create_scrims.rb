class CreateScrims < ActiveRecord::Migration[5.2]
  def change
    create_table :scrims do |t|
      t.date :start_game
      t.date :end_game
      t.boolean :confirmation, default: false
      t.references :team_host, foreign_key: {to_table: :teams}
      t.references :team_visitor, foreign_key: {to_table: :teams}
      t.string :winner
      t.integer :team_host_kills
      t.integer :team_visitor_kills
      t.string :team_host_champions
      t.string :team_visitor_champions


      t.timestamps
    end
  end
end
