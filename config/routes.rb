Rails.application.routes.draw do
  get 'courses/index'
  root "courses#index"
end
