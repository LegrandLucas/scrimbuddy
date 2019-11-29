class Review < ApplicationRecord
  belongs_to :team
  belongs_to :user
  belongs_to :scrim

  def display_add_review_form(user)
  # user.scrim.map(&:team).include?(self)
    user.scrim.select { |scrim| scrim.end_game < Date.today }.map(&:team).include?(self)
  end
end
