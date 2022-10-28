Rails.application.routes.draw do
  devise_for :users
  resources :users
  root "application#main-landing-page"

  get "/main-landing-page", to: "application#main-landing-page"
  get "/buisness-services", to: "application#buisness-services"
  get "/request-quote-page", to: "application#request-quote-page"
  get "/residential-services", to: "application#residential-services"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
