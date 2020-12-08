Rails.application.routes.draw do
  root to: "application#not_found"
  

  resources :seasons do 
    resources :matches
  end

  get '*unmatched_route', to: 'application#not_found'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
