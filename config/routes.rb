Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # list all tasks
  get '/tasks', to: 'tasks#index'

  # Create new task: one that shows a form
  # one that saves it on DB
  get 'tasks/new', to: 'tasks#new', as: :tasks_new
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id/edit', to: 'tasks#edit', as: :tasks_edit

  # read one task only
  get '/tasks/:id', to: 'tasks#show', as: :task

  # edit tasks: one to show the task
  # one to save it on DB
  patch 'tasks/:id', to: 'tasks#update'

  #destroy: find the task
  # one to save it on DB
  delete 'tasks/:id', to: 'tasks#destroy'
end
