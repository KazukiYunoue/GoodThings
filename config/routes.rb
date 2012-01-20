GoodThings::Application.routes.draw do
  get "sessions/create"

  get "sessions/destroy"

  resources :good_things

  # facebook app
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout

  # Top
  root :to => "good_things#index"
end
