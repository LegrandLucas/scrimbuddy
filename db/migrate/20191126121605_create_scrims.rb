class CreateScrims < ActiveRecord::Migration[5.2]
  def change
    create_table :scrims do |t|
      t.date :start_game
      t.date :end_game
      t.string :result
      t.boolean :confirmation, default: false
      t.references :team_host, foreign_key: {to_table: :teams}
      t.references :team_visitor, foreign_key: {to_table: :teams}


      t.timestamps
    end
  end
end
