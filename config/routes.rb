Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :todo_lists do
  	resources :todo_items do
  		member do
  			patch :complete
  			patch :incomplete
  		end
  	end
  end
  root "todo_lists#index"
end
