Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'contacts#index'

  resources :contacts, only: [:index, :create] do
  	collection do
  		post 'request_quote'
  	end
  end

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
