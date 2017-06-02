Rails.application.routes.draw do
root 'session#index'

  get 'session/index'

  get 'session/new'

  post 'session/create_coder' => 'session#create_coder'
  post 'session/create_client' => 'session#create_client'
  post 'session/log_in_coder' => 'session#log_in_coder'
  post 'session/log_in_client' => 'session#log_in_client'

  get 'session/show'

  get 'session/edit'

  get 'session/update'

  get 'session/destroy'

  get 'jobs/index'

  get 'jobs/new'

  get 'jobs/create'

  get 'jobs/show'

  get 'jobs/edit'

  get 'jobs/update'

  get 'jobs/destroy'

  get 'coders/index'

  get 'coders/new'

  get 'coders/create'

  get 'coders/:id/show' => 'coders#show'

  get 'coders/edit'

  get 'coders/update'

  get 'coders/destroy'

  get 'clients/index'

  get 'clients/new'

  get 'clients/create'

  get 'clients/:id/show' => 'clients#show'

  get 'clients/edit'

  get 'clients/update'

  get 'clients/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
