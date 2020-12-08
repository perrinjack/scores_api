class SeasonsController < ApplicationController
        
        def index
          @seasons = Season.all
          json_response(@seasons)
        end
    
        
        private
      
        def todo_params
          # whitelist params
          params.permit(:title, :created_by)
        end

end
