Rails.application.routes.draw do
  root "events#index"

  resources :events do
    member do
      get :add_relevence
      get :sub_relevence
    end
  end
end
