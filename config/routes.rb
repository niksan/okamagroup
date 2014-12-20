Rails.application.routes.draw do

  root to: 'main#index'

  devise_for :users

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Ckeditor::Engine => '/ckeditor'

end
