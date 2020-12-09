# frozen_string_literal: true

class SeasonsController < ApplicationController
  before_action :set_season, only: [:show]

  def index
    @seasons = Season.all

    json_response(@seasons)
  end

  def show
    json_response(@season)
  end

  private

  def set_season
    @season = Season.find(params[:id])
  end
end
