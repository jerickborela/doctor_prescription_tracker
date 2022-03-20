Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/doctors', to: 'doctors#index', as: 'doctors'

   root to: 'doctors#index'
end
