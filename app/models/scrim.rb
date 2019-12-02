class Scrim < ApplicationRecord
  # for simple form for
  attr_reader :start_hour
  attr_reader :start_minutes
  attr_reader :end_hour

  belongs_to :team_host,    class_name: "Team"
  belongs_to :team_visitor, class_name: "Team"

end
