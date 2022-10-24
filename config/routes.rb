Rails.application.routes.draw do
  resources :monsters, only: [:index, :show, :new, :create, :edit, :update]

  root "monsters#index"
end
