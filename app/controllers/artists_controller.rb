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
       @song=Song.new

     end

     def new
      @artist =Artist.new
     end

     def create
       #not working

       artist_params = params.require(:artist).permit(:name, :age, :image_url)
       @artist=Artist.new(artist_params)


       if @artist.save
         redirect_to @artist
       else
         render 'new'
       end
     end

     def destroy
       artist=Artist.find(params[:id])
       artist.destroy
       redirect_to root_path

     end


    # def display
    #   @artists = Artist.all.each {|ar| puts ar.inspect}
    # end


end
