Rails.application.routes.draw do
  get 'login/index'
  post 'login/data'
  root 'login#index'
end
