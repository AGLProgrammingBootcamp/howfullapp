Rails.application.routes.draw do
  get 'cafe/find'=> 'caves#find'

  resources :caves do 
    get 'counter', to: 'counter#count'
    get 'enter_sensor', to: 'home#enter_sensor' 
    get 'leave_sensor', to: 'home#leave_sensor'
  end
  
  namespace :store do
    resources :caves
  end
end
