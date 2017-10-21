class SongsController < ApplicationController
  before_action :set_artist

  def create
    song_params = params.require(:song).permit(:name)
    @song=@artist.songs.create(song_params)

    if @song.save!
      render status: 200, json: @song
      redirect_to artist_path(@artist.id)
    else
      redirect_to root_path
    end
  end

  def destroy

    song=Song.find(params[:id])

    song.destroy
    render status: 200, json: {
      message: "Song successfully deleted"
    }.to_json
    redirect_to artist_path(@artist.id)

  end

  private

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

end
