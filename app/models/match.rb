class Match < ApplicationRecord
  belongs_to :season, optional: true
  validates_presence_of :home_team, :home_team_score, :away_team, :away_team_score
end
