# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do

  # N A M E S P A C I N G   H E R E  SHOWS LOCATION IN FILETREE
  # app>controllers>api>v1>artists_controller.rb
  # app>controllers>api>v1>artworks_controller.rb  
  namespace :api do
    namespace :v1 do

      # ALLOW FOR BEAUTIFUL, CONVENTIONAL, R E S T F U L   R O U T E S WITH THIS NESTING
      # http://127.0.0.1:3001/api/v1/artists/2/artworks/1
      resources :artists do
        resources :artworks
      end
      
      # ALLOW FOR STANDALONE 'INDEX' | 'SHOW' | (ETC) ROUTE ACCESS IN THE URL
      # http://127.0.0.1:3001/api/v1/artists/1
      resources :artists
      # http://127.0.0.1:3001/api/v1/artworks/2
      resources :artworks

    end
  end
  

end