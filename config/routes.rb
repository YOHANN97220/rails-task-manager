Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #liste des tasks
  resources :tasks
  # get 'tasks', to: 'tasks#index'
  # #Creer une task
  # get 'tasks/new', to: 'tasks#new', as: :new_task
  # post 'tasks', to: 'tasks#create'
  # #details des tasks
  # get 'tasks/:id', to: 'tasks#show', as: :task
  # #editer une task
  # get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # patch 'tasks/:id', to: 'tasks#update'

  # #delete une task
  # delete 'tasks/:id', to: 'tasks#destroy'

  # #
end
