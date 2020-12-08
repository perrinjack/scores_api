# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Season, type: :model do
  it { should have_many(:matches) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_at) }
end
