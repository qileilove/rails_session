Rails.application.routes.draw do
  resources :ideas do
    get '/list', on: :collection, to: 'ideas#list_all', as: 'list'
    # get '/', on: :collection, action: :list_all
    # get 'profile', to: :show, controller: 'users'

  end

  root to: redirect('/ideas')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
