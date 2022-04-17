Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :trips
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      post '/users', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    end
  end
end



# api_v1_trips GET    /api/v1/trips(.:format)                                                                           api/v1/trips#index
#              POST   /api/v1/trips(.:format)                                                                           api/v1/trips#create
#  api_v1_trip GET    /api/v1/trips/:id(.:format)                                                                       api/v1/trips#show
#              PATCH  /api/v1/trips/:id(.:format)                                                                       api/v1/trips#update
#              PUT    /api/v1/trips/:id(.:format)                                                                       api/v1/trips#update
#              DELETE /api/v1/trips/:id(.:format)                                                                       api/v1/trips#destroy
# api_v1_users POST   /api/v1/users(.:format)                                                                           api/v1/users#create
# api_v1_login POST   /api/v1/login(.:format)                                                                           api/v1/auth#create
# api_v1_profile GET    /api/v1/profile(.:format)                                                                         api/v1/users#profile

## still have to refer to this when testing postman haha