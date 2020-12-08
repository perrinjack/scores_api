class ApplicationController < ActionController::API
    include Response

    def not_found
        render plain: "Not found.", status: 404
    end
end
