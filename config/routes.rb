Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"

  get 'regulation' => 'pages#regulation'
  get 'media' => 'pages#media'
  get 'who_are_we' => 'pages#who_are_we'
  get 'practical_info' => 'pages#practical_info'
  get 'contact' => 'pages#contact'
  get 'our_partners' => 'pages#our_partners'

end
