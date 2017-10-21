class SongsController < ApplicationController
  before_action :set_artist

  def create
    song_params = params.require(:song).permit(:name)
    @song=@artist.songs.create(song_params)

    if @song.save!
      respond_to do |format|
        format.html{redirect_to artist_path(@artist.id)}
        format.json{render status: 200, json: @song}
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    song=Song.find(params[:id])
    song.destroy

    respond_to do |format|
      format.json{ render status: 200, json:
        {
          message: "Song successfully deleted"
        }.to_json
      }
      format.html{redirect_to artist_path(@artist.id)}
   end
  end

  private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

end
