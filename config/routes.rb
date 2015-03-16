Rails.application.routes.draw do
  # get 'squads/index'
  root 'squads#index'


  get 'example' => 'example#index'


  namespace :api do
    resources :squads, defaults: { format: :json }
  end
end