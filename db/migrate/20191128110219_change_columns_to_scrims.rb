class ChangeColumnsToScrims < ActiveRecord::Migration[5.2]
  def change
    remove_column :scrims, :end_game
    remove_column :scrims, :start_game
    add_column :scrims, :end_game, :datetime
    add_column :scrims, :start_game, :datetime
  end
end
