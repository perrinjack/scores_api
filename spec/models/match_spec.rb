# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Match, type: :model do
  it { should belong_to(:season) }
  it { should validate_presence_of(:home_team) }
  it { should validate_presence_of(:away_team) }
  it { should validate_presence_of(:away_team_score) }
  it { should validate_presence_of(:home_team_score) }
end
