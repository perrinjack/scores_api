class QueriesController < ApplicationController
    before_action :validate_params

    def index
        
        @matches = Match.find_by(home_team: params[:home])
        
        json_response(@matches)

    end


    private 



    def validate_params
        return false unless params[:home].present?
    end




end
