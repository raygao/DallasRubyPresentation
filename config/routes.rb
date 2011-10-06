DallasRbDemo::Application.routes.draw do
  resources :chatters, :only => [:index]
  resources :users, :only => [:index, :new, :create]
  root :to => "users#index"
end
