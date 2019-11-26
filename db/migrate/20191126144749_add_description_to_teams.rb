class AddDescriptionToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :description, :text
  end
end
