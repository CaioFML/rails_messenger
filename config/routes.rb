Rails.application.routes.draw do
  devise_for :users
  root to: "chats#index"
  root to: "chats#index"

  get "/manifest.json", to: "service_workers#manifest"
  get "/service-worker.js", to: "service_workers#service_worker"

  resources :contacts, only: %i[index new create destroy]
  resources :chats, only: %i[index show] do
    resources :messages, only: :create, defaults: { format: :js }
  end
end
