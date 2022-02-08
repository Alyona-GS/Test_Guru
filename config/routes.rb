Rails.application.routes.draw do
  root "about#index"

  get "/about", to: "about#index"
end
