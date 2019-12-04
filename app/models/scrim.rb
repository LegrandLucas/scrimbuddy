class Scrim < ApplicationRecord
  # for simple form for
  attr_reader :start_hour
  attr_reader :start_minutes
  attr_reader :end_hour

  belongs_to :team_host,    class_name: "Team"
  belongs_to :team_visitor, class_name: "Team"

  def first_team_against(user)
    return self.team_host if self.team_host != user.team

    self.team_visitor
  end
end
