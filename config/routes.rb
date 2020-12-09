# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'application#not_found'

  resources :seasons, :only => [:index, :show] do
    resources :matches, :only => [:index, :show]
  end

  get '/query', to: 'queries#index'

  

  get '*unmatched_route', to: 'application#not_found'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
