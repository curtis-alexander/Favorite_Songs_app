Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/songs", controller: "songs", action: "index"
  post "/songs", controller: "songs", action: "create"
  get "/songs/:id", controller: "songs", action: "show"
end
