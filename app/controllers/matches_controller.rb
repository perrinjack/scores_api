# frozen_string_literal: true

class MatchesController < ApplicationController
  def index
  
    @matches = Season.find(params[:season_id]).matches

    json_response(@matches)
  end
end
