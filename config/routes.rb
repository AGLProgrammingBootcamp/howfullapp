Rails.application.routes.draw do
  get 'cafe/find'=> 'caves#find'
  get 'counter/count'
  get 'home/sensor'
  get 'home/leave_sensor'
  get 'home/enter_sensor'

  resources :caves
  namespace :store do
    resources :caves
  end
end
