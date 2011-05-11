GladArena::Application.routes.draw do

  root :to => "users#new"
  get "log_in" => "session#new", :as=> "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"

  get "sign_up" => "users#new", :as => "sign_up"
  resources :users
  resources :gladcrud, :except => [:show]

  get "game/fight"
  get "game/results"

  match "fight" => "game#fight"
  match "game/select_players" => "game#select_players"
  match "game/results" => "game#results"

end
