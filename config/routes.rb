Rails.application.routes.draw do
  resources :posts
  root to: 'pages#home'

  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # ncc.nitk.ac.in/pages/
  resources :pages do
    collection do
      get :home
      get :history
      get :aim_motto
      get :flag
      get :song
      get :alumni
      get :enrolment
      get :downloads
      get :gallery
      get :about
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
