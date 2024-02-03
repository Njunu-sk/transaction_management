TransactionManagement::Engine.routes.draw do
  root to: "home#index"
  resources :accounts, only: [:show]
  resources :transactions, only: [:index, :show, :create]
end
