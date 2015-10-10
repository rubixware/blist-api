Rails.application.routes.draw do
  devise_for :companies
  namespace :api, defaults: { format: :json }, path: '/'  do
   scope module: :v1,
         constraints: ( ApiConstraints.new(version: 1, default: true) ) do

       resources :companies,   only: [:index, :show, :create, :update]
       resources :sessions,  only: [:create]

   end
 end
end
