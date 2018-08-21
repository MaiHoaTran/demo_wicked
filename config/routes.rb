Rails.application.routes.draw do
  get 'user/show'

  root 'static_pages#index'
  devise_for :users, path: "", controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }

  resources :user_steps
end
