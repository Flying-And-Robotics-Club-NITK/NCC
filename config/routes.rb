Rails.application.routes.draw do
  resources :attendances
  resources :events
  resources :testimonials
  resources :news
  resources :enrollment_forms
  resources :posts
  # root to: 'pages#nccflag'

  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'pages/home'
  get 'pages/aims'
  get 'pages/history'
  get 'pages/nccsong'
  get 'pages/motto'
  get 'pages/nccflag'
  get 'pages/nccrules' # only for PDFs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
