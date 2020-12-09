# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Items API' do
  # Initialize the test data
  let!(:season) { create(:season) }
  let!(:matches) { create_list(:match, 20, season_id: season.id) }
  let(:season_id) { season.id }
  let(:id) { matches.first.id }

  describe 'GET /seasons/:season_id/matches' do
    before { get "/seasons/#{season_id}/matches" }

    context 'when season exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns all matches items' do
        expect(json.size).to eq(20)
      end
    end
  end
end
