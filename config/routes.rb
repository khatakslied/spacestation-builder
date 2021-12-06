Rails.application.routes.draw do
  root to: 'space_stations#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :space_stations do
    resources :attachment_spaces, only: [:new, :create]
  end
end
