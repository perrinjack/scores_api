# frozen_string_literal: true

class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler
  def not_found
    render plain: 'Not found.', status: 404
  end
end
