Rails.application.routes.draw do

  get "/", to: "pages#home"

  get "/home", to: "pages#home"
  
  get "/team", to: "pages#team"

  get "/contact", to: "pages#contact"

  get "/welcome/:user_entry", to: "pages#show"

  get "/gossip/:id", to: "pages#gossip"

  get "/auteur/:id", to: "pages#auteur"

end
