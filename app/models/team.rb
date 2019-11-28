class Team < ApplicationRecord
  has_many_attached :images
  has_one_attached :logo
  has_many :users, dependent: :destroy
  has_many :reviews, dependent: :destroy
  # Not working beacause team_id is not existing in Scrim
  # has_many :scrims, dependent: :destroy
end
