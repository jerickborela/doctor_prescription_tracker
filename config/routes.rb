Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/doctors', to: 'doctors#index', as: 'doctors'
  # post 'doctors', to: 'doctors#create'
  # get 'doctors/new', to: 'doctors#new', as: 'new_doctor'
  # get 'doctors/:id/edit',to: 'doctors#edit', as: 'edit_doctor'
  # get 'doctors/:id', to: 'doctors#show', as: 'doctor'
  # patch 'doctors/:id', to: 'doctors#update'
  # delete 'doctors/:id', to: 'doctors#destroy'
  # get '/medicines', to: 'medicines#index', as: 'medicines'
  # post 'medicines', to: 'medicines#create'
  # get 'medicines/new', to: 'medicines#new', as: 'new_medicine'
  # get 'medicines/:id/edit',to: 'medicines#edit', as: 'edit_medicine'
  # get 'medicines/:id', to: 'medicines#show', as: 'medicine'
  # patch 'medicines/:id', to: 'medicines#update'
  # delete 'medicines/:id', to: 'medicines#destroy'

  resources :doctors 
  resources :medicines
 

  

  root to: 'doctors#index'
end

