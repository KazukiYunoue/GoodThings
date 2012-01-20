GoodThings::Application.routes.draw do
  get "welcome/index"

  get "sessions/create"

  get "sessions/destroy"

  resources :good_things, :except => ["edit","show"] do
    post :done, :on => :member
  end

  # facebook app
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout

  # Top
  root :to => "welcome#index"
end
