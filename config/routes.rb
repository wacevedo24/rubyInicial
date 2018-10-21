Rails.application.routes.draw do
 
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources 'animals', except:[:new, :edit]
  get 'about', to: 'pages#about'
  root to:'pages#index'
  get 'animales', to:'animales#index'

  namespace :api do
    namespace :v1 do 
      get 'animals', to: 'animals#index'
      namespace :sessions do
        post 'saludo', to: 'saludos#crea_saludo'
      end
    end  
  end

  
  
end

