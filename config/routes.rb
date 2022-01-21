# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do

  # N A M E S P A C I N G   H E R E  SHOWS LOCATION IN FILETREE
  # app>controllers>api>v1>artists_controller.rb
  # app>controllers>api>v1>artworks_controller.rb  
  namespace :api do
    namespace :v1 do

      resources :artists
      resources :artworks

    end
  end
  

end