class Api::V1::ArtworksController < ApplicationController

    def index
        artworks = Artwork.all
        render json: artworks
    end

    def show
        # USING '.find' WILL E R R O R OUT IF NO MATCH FOUND
        artwork = Artwork.find_by_id(params[:id])
        artwork ? (render json: artwork) : (render json: { message: 'aRtWoRk nOt FoUnD XC' })
    end

    def update
        artwork = Artwork.find_by_id(params[:id])
        if artwork
            artwork.update(artwork_params)
            render json: artwork
        else
            render json: { message: 'E R R O R - CANNOT UPDATE - ARTWORK NOT FOUND'}
        end
    end


    
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    private
        def artwork_params
            params.require(:artwork).permit( :likes )
        end
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

end
