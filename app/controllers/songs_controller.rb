class SongsController < ApplicationController
  def index
    @songs = Songs.all
  end

  def show
    @song = Songs.find(param[:id])
  end

  def edit
    render partial: 'form'
  end

  def new
    @song = Songs.new(song_params)
    
    if @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  def update
    @song = Song.update(song_params)
    if @song.save
      # TODO
    else
      render :new
    end
  end

  private
    def song_params
      params.require(:songs).permit(:title, :artist, :duration, :genre, :album)
    end
end
