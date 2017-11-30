class BillboardsController < ApplicationController
  before_action :set_songs
  
  def index
    @billboards = Billboard.all
  end

  def show
    @billboard = Billboard.find(params[:id])
  end

  def edit
    @billboard = Billboard.find(params[:id])
    render partial: 'form'
  end

  def new
    @billboard = Billboard.new
    render partial: 'form'
  end

  def create
    @billboard = Billboard.new(billboard_params)

    if @billboard.save
      redirect_to billboard_path(@billboard)
    else
      render :new
    end
  end

  def update
    @billboard = Billboard.find(params[:id])
    if @billboard.update(billboard_params)
      redirect_to billboards_path
    else
      render partial: "form"
    end
  end

  private
    def billboard_params
      params.require(:billboard).permit(:title)
    end
    
    def set_songs
      @songs = Song.all
    end
end
