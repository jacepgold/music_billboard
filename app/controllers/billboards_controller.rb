class BillboardsController < ApplicationController
  
  def index
    @billboards = Billboard.all
    @Songs = Songs.all
  end

  def show
    @billboard = Billboard.find(params[:id])
    @songs = Songs.all
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
end
