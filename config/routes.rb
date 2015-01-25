Rails.application.routes.draw do

  root to: 'main#index'

  devise_for :users

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Ckeditor::Engine => '/ckeditor'

  resources :gosts, only: :index
  resources :pages, only: :show
  with_options only: :index do
    resources :prices
    resources :faq
    resources :contacts
  end

end
