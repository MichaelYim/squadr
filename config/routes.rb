Rails.application.routes.draw do
  get 'example' => 'example#index'

  namespace :api do
    resources :squads, defaults: { format: :json }
  end
end