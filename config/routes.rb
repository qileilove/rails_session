require 'sidekiq/web'

Rails.application.routes.draw do
  resources :carts
  get 'store/index'

  resources :products
  resources :ideas do
    get '/list', on: :collection, to: 'ideas#list_all', as: 'list'
    # get '/', on: :collection, action: :list_all
    # get 'profile', to: :show, controller: 'users'
    get '/delete_all', on: :collection, to: 'ideas#destory_all', as: 'delete_all'
    resources :plans

  end
resources :store
  mount Sidekiq::Web => '/sidekiq'

  root to: redirect('/ideas')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
