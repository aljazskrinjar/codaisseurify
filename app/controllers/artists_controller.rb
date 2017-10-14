class ArtistsController < ApplicationController

    def index
       @artists = Artist.all
     end

     def show
       @artist = Artist.find(params[:id])
       #@songs = Song.all
     end

     def new
      @artist =Artist.new
     end

     def create
       #it should get params from site
       artist_params = params.require(:artist).permit(:name, :age, :image_url)
       #using the params to create a new instance of artist class
       @artist=Artist.new(artist_params)
       #redirect

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