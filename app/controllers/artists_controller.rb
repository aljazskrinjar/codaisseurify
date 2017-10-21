class ArtistsController < ApplicationController

    def index

       if Artist.descenderValue
        @artists=Artist.all.order(:name)

       else

        @artists=Artist.all.order("name DESC")

      end

     end

     def show
       @artist = Artist.find(params[:id])
       
     end



     def destroy
       artist=Artist.find(params[:id])
       artist.destroy
       redirect_to root_path

     end





end
