class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only: [:show, :edit, :update, :destroy]


  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(param[:id])
  end

  def edit
    render partial: 'form'
  end

  def new
    @song = Song.artist.new(song_params)
  end

  
  def create
    @song = Song.artist.new(song_params)
    if @song.save
      redirect_to artist_song_path(@song)
    else
      render :new
    end
  end  

  def update
    @song = Song.update(song_params)

    if @song.save
      #redirect_to artist_song_path(@song) 
    else
      render :new
    end
  end

  private
  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def set_song
    @song = @artist.songs.find(params[:id])
  end

  def song_params
      params.require(:song).permit(:title, :duration, :belongs_to, :album)
  end 
end