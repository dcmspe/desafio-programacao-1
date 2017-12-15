Rails.application.routes.draw do
  get 'purchases/index'

  post 'purchases/upload'

  root 'purchases#index'
end
