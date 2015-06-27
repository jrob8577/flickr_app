Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  get 'flickr/interestingness'
  get 'flickr/photo/:id', to: 'flickr#photo_info'
  get 'flickr/tags'
  get 'flickr/search'
end
