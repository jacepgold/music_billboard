class SongsController < ApplicationController
  def index
    @songs = Songs.all
  end

  def show
    @song = Songs.find(param[:id])
  end

  def edit
    render_partial 'form'
  end

  def new
    @song = Songs.new(song_params)
    
    if @song.save
      redirect_to artist_song_path(@artist, @song)

  end

  private
    def song_params
      params.require(:songs).permit(:title, :artist, :duration, :genre, :album)
    end
end
