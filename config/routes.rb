Rails.application.routes.draw do
  root "courses#index"

  get "/students", to: "students#index"
end
