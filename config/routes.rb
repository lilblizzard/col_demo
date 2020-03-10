Rails.application.routes.draw do
  root 'manuscripts#index'
  resources :quires, except: %i[new create show index] do
    resources :leaves
  end
  resources :manuscripts do
    resources :quires, only: %i[new create show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
