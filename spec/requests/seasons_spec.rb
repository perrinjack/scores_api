# frozen_string_literal: true

# spec/requests/todos_spec.rb
require 'rails_helper'

RSpec.describe 'Seasons API', type: :request do
  # initialize test data
  let!(:season) { create(:season) }

  let(:season_id) { season.id }

  # Test suite for GET /seasons
  describe 'GET /seasons' do
    # make HTTP get request before each example
    before { get '/seasons' }

    it 'returns seasons' do
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /seasons/:id' do
    before { get "/seasons/#{season_id}" }

    context 'when the record exists' do
      it 'returns the season' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(season_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:season_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Season/)
      end
    end
  end
end
