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
  get 'lists/students', to: 'students#student_list'
  root 'visitors#index'
end
