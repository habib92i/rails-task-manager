Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index', as: 'indexpage'
  post 'tasks', to: 'tasks#create'
  get 'tasks/new', to: 'tasks#new', as: 'creation'
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  get 'tasks/:id/edit', to: "tasks#update", as: "edit_task"
  patch "/tasks/:id", to: "tasks#update"
end
