Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # READ
  # see lists of tasks
  get 'tasks', to: 'tasks#index'
  # see a specific task
  get 'tasks/:id', to: 'tasks#show'




  # CREATE
  # get the form
  get 'tasks/new', to: 'tasks#new'
  # submit the form
  post 'tasks', to: 'tasks#create'



  # UPDATE
  # get the form
  get 'tasks/:id/edit', to: 'tasks#edit'
  #submit the form
  patch 'tasks/:id', to: 'tasks#update'


  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'

end
