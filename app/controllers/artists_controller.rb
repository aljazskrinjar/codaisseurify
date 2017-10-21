class ArtistsController < ApplicationController

    def index
        respond_to do |format|
          @artists=Artist.all.order(:name)
          format.html{}
          format.json{render status: 200, json: @artists}
        end
     end

     def show
       respond_to do |format|
         @artist = Artist.find(params[:id])
         format.html{}
         format.json{render status: 200, json: @artist}
       end
     end



     def destroy
       artist=Artist.find(params[:id])
       artist.destroy
       redirect_to root_path

    #    render status: 200, json: {
    #   message: "Artist successfully deleted"
    # }.to_json

     end





end
