class Scrim < ApplicationRecord
  belongs_to :team_host,    class_name: "Team"
  belongs_to :team_visitor, class_name: "Team"
  has_many :reviews, dependent: :destroy
end
