Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  get 'flickr/index'
end
