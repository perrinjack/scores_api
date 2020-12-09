# frozen_string_literal: true

class MatchesController < ApplicationController
    before_action :set_season
    before_action :set_season_item, only: [:show]
  def index
  
    @matches = Season.find(params[:season_id]).matches

    json_response(@matches)
  end

  def show
    @match = Season.find(params[:season_id]).matches
    json_response(@match)
  end

  def set_season
    @season = Season.find(params[:season_id])
  end

  def set_season_item
    @match = @season.matches.find_by!(id: params[:id]) if @season
  end

end
