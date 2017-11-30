class ArtistsController < ApplicationController
  def index
    @artists = Artists.all
  end

  def show
    @artist = Artists.find(params[:id])
  end

  def edit
    render_partial 'form'
  end

  def new
    @artist = Artists.new
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to artists_path(@artist)
    else
      render :new
    end
  end

  private
    def artist_params 
      params.require(:artist).permit(:name)
    end
end
