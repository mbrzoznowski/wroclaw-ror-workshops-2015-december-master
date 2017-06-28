Rails.application.routes.draw do
  devise_for :users
  resources :students, :teachers do
    get :subjects
  end
  resources :visitors, :teachers, :report_subjects, :reports
  namespace :reports do
    resources :subjects
  end
  get 'reports/subjects', to: 'reports#subjects'
  root 'visitors#index'
end
