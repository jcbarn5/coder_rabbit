Rails.application.routes.draw do
root 'session#index'

  get 'session/index'

  get 'session/new'

  get 'session/create'

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

  get 'coders/show'

  get 'coders/edit'

  get 'coders/update'

  get 'coders/destroy'

  get 'clients/index'

  get 'clients/new'

  get 'clients/create'

  get 'clients/show'

  get 'clients/edit'

  get 'clients/update'

  get 'clients/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
