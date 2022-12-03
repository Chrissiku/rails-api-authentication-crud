# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }  
  get 'users/logged', to: 'members#index'

  namespace :api do
    namespace :v1 do
      resources :companies
    end
  end

end
