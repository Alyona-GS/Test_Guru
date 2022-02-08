Rails.application.routes.draw do
  root "about#index"

  get "/about", to: "about#index"
  get "/about/author", to: "about#author"
end
