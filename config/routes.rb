Rails.application.routes.draw do
  match('tasks', {:via => :get, :to => 'task#index'})
  match('tasks', {:via => :post, :to => 'task#create'})
  match('tasks/:id', {:via => :get, :to => 'task#show'})
  match('tasks/:id/edit', {:via => :get, :to => 'task#edit'})
  match('tasks/:id', {:via => [:patch, :put], :to => 'task#update'})
  match('tasks/:id', {:via => :delete, :to => 'task#destroy'})
  match('tasks/:completed', {:via => [:patch, :put], :to => 'task#mark_done'})
  match('/', {:via => :get, :to => 'task#index'})
end
