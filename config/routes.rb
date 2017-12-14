Rails.application.routes.draw do
  get 'purchases/index'

  root 'purchases#index'
end
