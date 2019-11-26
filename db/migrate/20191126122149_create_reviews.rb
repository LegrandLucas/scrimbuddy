class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :punctuality_rate
      t.integer :professionalism_rate
      t.integer :fair_play_rate
      t.references :team, foreign_key: true
      t.references :user, foreign_key: true
      t.references :scrim, foreign_key: true

      t.timestamps
    end
  end
end
