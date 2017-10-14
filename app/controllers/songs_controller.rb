class SongsController < ApplicationController
  def new
    @artist= Artist.find params[:id]
    @song=Song.new()


  end
  def create
    #@artist= Artist.find params[:id]
    #it should get params from site
    song_params_name = params.require(:song).permit(:name, :artist_id)
    #using the params to create a new instance of song class
    @song=Song.new( song_params_name)
    #redirect

    if @song.save

      redirect_to @song.artist
    else
      render 'new'
    end
  end

  def destroy

    song=Song.find(params[:id])
    song.destroy
    redirect_to song_path(song.artist.id)

  end

  def show
    @artist= Artist.find params[:id]

  end



end
