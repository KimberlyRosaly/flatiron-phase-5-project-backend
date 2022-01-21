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

end
