Rails.application.routes.draw do
  resources :expenses, only: %i[index edit new create update]

  root 'expenses#index'
end
