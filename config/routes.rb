Rails.application.routes.draw do
  # GET '/tasks': get all your tasks.
  get 'tasks', to: 'tasks#index'
   # GET '/tasks/new': get the form to create a new task
  get 'tasks/new', to: 'tasks#new'
  # GET '/tasks/:id': get a precise task, e.g GET '/tasks/3' fetches the task with id=3
  get 'tasks/:id', to: 'tasks#show', as: 'task'
   # POST '/tasks': post a new task
  post 'tasks', to: 'tasks#create'
  # GET '/tasks/:id/edit': get the form to edit an existing task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'task/edit'
  # PATCH '/tasks/:id': update an existing task
  patch 'tasks/:id', to: 'tasks#update'
  # DELETE '/tasks/:id': delete an existing task
  delete 'tasks/:id', to: 'tasks#destroy'
end
