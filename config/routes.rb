Rails.application.routes.draw do
  resources :expenses, only: %i[index new create]
  root 'expenses#index'
end
