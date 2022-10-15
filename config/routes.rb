Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/articles", to: "articles#index"
  get "/articles/hello", to: "articles#hello"
  get "/articles/sharks_from_csv", to: "articles#sharks_from_csv"
end
