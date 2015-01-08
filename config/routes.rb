Rails.application.routes.draw do

  resources :cornerstones do
    collection do
      get "map"
    end
  end

  resources :cornerstones

  root :to => 'cornerstones#index'

end
