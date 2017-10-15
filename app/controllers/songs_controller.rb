class SongsController < ApplicationController
  def new
    @artist= Artist.find params[:id]
    @song=Song.new()


  end
  def create

    song_params = params.require(:song).permit(:name, :artist_id)

    @song=Song.new( song_params)
    

    if @song.save

      redirect_to @song.artist
    else
      render 'new'
    end
  end

  def destroy

    song=Song.find(params[:id])
    song.destroy
    redirect_to artist_path(song.artist.id)

  end

  def show
    @artist= Artist.find params[:id]

  end



end
