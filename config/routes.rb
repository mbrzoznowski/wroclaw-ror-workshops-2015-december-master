Rails.application.routes.draw do
  devise_for :users
  resources :students do
    get :subjects
  end
  resources :visitors, :teachers, :report_subjects
  resources :reports do
    get :subjects
  end
  root 'visitors#index'
end
