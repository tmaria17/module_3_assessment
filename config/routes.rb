Rails.application.routes.draw do
  root "welcome#index"
  resources :sentences
end
