Rails.application.routes.draw do
  root to: 'home#index'
  match '/dashboard', to: 'home#dashboard', via: 'get'

  devise_scope :user do
    root :to => 'users/sessions#new'
    resources :uploads
  end
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords', confirmations: 'users/confirmations',  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
