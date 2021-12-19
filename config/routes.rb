Rails.application.routes.draw do

  post "/boats" => "boats#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get "/boats" => "boats#index"

  get "/boats" => "boats#download"

  # resources :users, only: :index
end
