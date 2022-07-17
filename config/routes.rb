Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/contact' , to: "root#contact"
  get '/about', to: "root#about"
  get 'index', to: "root#index"
  get '/response', to: "root#api"
  get "/user/:id/:name", to: "root#user"
  post "/add", to: "root#add"
  
  # we need this 2 lines for our delete link_to setup
  delete 'delete/:id' => 'root#destroy', as: 'root_delete'
  get '/delete/:id' => 'root#destroy'

  #for homepage
  root "root#index"
  get "/search", to: "root#search"
  #resources :posts, only: [:show, :index, :new, :create, :edit, :update, :delete]

end
