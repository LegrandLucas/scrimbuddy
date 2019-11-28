class ChangeDatesTypesColumnToScrims < ActiveRecord::Migration[5.2]
  def change
    change_column :scrims, :start_game, :datetime
    change_column :scrims, :end_game, :datetime
  end
end
