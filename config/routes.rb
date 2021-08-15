Rails.application.routes.draw do
  resources :course_skills
  resources :skills
  resources :trapples
  resources :courses
  devise_for :admins
  resources :qualification_ts
  resources :qualifications
  devise_for :users
  resources :friends
 # get 'home/index'
  root 'home#index'
  get 'ilos/index'
 	get 'home/about'
get 'process/about'
  get 'iso/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'qualifications/index'
  get 'readmore/index'
  get 'qualification/index'
  get 'register/index'
  get 'login/index'
  get 'about/index'
  get 'home/login'
  get 'view/index'
end

