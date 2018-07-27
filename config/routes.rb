Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  root to: 'tasks#index'

  get "tasks/:id", to: "tasks#show", as: :task

  get    "new",      to: "tasks#new"
  post   "tasks",   to: "tasks#create"

end


# First, add a new route to list the tasks, following the convention from the lecture.
# Then, add a controller action and its view.
# This action should fetch all tasks, and a view should loop over these to display them.
