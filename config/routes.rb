Rails.application.routes.draw do
  get 'expenses/index'
  root 'expenses#index'
end
