class Team < ApplicationRecord
  has_many_attached :images
  has_one_attached :logo
end
