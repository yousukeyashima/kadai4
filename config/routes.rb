Rails.application.routes.draw do

  root  to: 'home#top'
  get '/home/about' => 'home#about'

  devise_for :users

  resources :users do
    resource :relationships
    get 'follows' => 'relationships#follower', as: 'follows'
    get 'followers' => 'relationships#followed', as: 'followers'
  end
  post 'follow/:id' => 'relationships#follow', as: 'follow'
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'


  resources :books

end