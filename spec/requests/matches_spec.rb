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

    context 'when season does not exist' do
        let(:season_id) { 0 }
  
        it 'returns status code 404' do
          expect(response).to have_http_status(404)
        end
  
        it 'returns a not found message' do
          expect(response.body).to match(/Couldn't find Season/)
        end
      end







  end
end
