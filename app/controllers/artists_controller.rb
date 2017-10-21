class ArtistsController < ApplicationController

    def index

       if Artist.descenderValue
        @artists=Artist.all.order(:name)
        render status: 200, json: @artists

       else

        @artists=Artist.all.order("name DESC")
        render status: 200, json: @artists

      end

     end

     def show
       @artist = Artist.find(params[:id])
       render status: 200, json: @artist
     end



     def destroy
       artist=Artist.find(params[:id])
       artist.destroy
       redirect_to root_path

       render status: 200, json: {
      message: "Artist successfully deleted"
    }.to_json

     end





end
