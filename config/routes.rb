Rails.application.routes.draw do
  root "articles#index"

  get 'articles/abc', to: "articles#my_data"
  
  resources :articles do
    resources :comments
  end
end