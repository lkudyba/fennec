Rails.application.routes.draw do
  resources :expenses, only: %i[index edit new create update destroy]

  root 'expenses#index'
end
