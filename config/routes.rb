Rails.application.routes.draw do
	devise_for :users

	resources :questions do
		resources :answers
	end

	resources :topics do 
		get :follow_topic, on: :member
	end

	resources :users,only: [] do
		get :follow_user, on: :member
	end

	root 'questions#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
