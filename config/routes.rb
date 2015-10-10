Rails.application.routes.draw do
  devise_for :companies
  namespace :api, defaults: { format: :json }, path: '/'  do
   scope module: :v1,
         constraints: ( ApiConstraints.new(version: 1, default: true) ) do

       resources :companies,   only: [:show, :create, :update]
       resources :sessions,  only: [:company_create] do

         collection do
           post :company, action: 'company_create', only: [:create]
         end

       end

   end
 end
end
