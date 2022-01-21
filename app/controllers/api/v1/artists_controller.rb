class Api::V1::ArtistsController < ApplicationController
    
    def index
        artists = Artist.all
        render json: artists
    end

    def show
        # USING '.find' WILL E R R O R OUT IF NO MATCH FOUND
        artist = Artist.find_by_id(params[:id])
        artist ? (render json: artist) : (render json: { message: 'aRtIsT nOt FoUnD XC' })
    end
end
