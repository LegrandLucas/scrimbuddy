class Review < ApplicationRecord
  belongs_to :team
  belongs_to :user
  belongs_to :scrim
end
