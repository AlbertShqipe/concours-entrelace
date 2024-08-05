Rails.application.routes.draw do

  root to: "pages#home"
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :groups
  resources :form_solos




  get 'regulation' => 'pages#regulation'
  get 'media' => 'pages#media'
  get 'who_are_we' => 'pages#who_are_we'
  get 'practical_info' => 'pages#practical_info'
  get 'contact' => 'pages#contact'
  get 'our_partners' => 'pages#our_partners'
  get 'apply' => 'pages#apply'

  # post '/apply', to: 'form_solos#create'
  # get 'form_solos' => 'form_solos#index'

end
