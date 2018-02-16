Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  # CREATE
  # get the form
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # submit the form
  post 'tasks', to: 'tasks#create'

  # READ
  # see lists of tasks
  get 'tasks', to: 'tasks#index'
  # see a specific task
  get 'tasks/:id', to: 'tasks#show', as: :task


  # UPDATE
  # get the form
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  #submit the form
  patch 'tasks/:id', to: 'tasks#update'


  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task

end
