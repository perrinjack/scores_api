# frozen_string_literal: true

require 'faker'
FactoryBot.define do
  factory :match do
    home_team { 'Luton' }
    away_team { 'Watford' }
    home_team_score { Faker::Number.between(from: 1, to: 10) }
    away_team_score { Faker::Number.between(from: 1, to: 10) }
    season_id { 1 }
  end
end
