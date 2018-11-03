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

  # def create
  #   @billboard = Billboard.new(billboard_params)

  #   respond_to do |format|
  #     if @billboard.save
  #       format.html { redirect_to @billboard, notice: 'Billboard was successfully created.' }
  #       format.json { render :show, status: :created, location: @billboard }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @billboard.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end


  def update
    @billboard = Billboard.find(params[:id])
    if @billboard.update(billboard_params)
      redirect_to billboards_path
    else
      render partial: "form"
    end
  end

  # def update
  #   respond_to do |format|
  #     if @billboard.update(billboard_params)
  #       format.html { redirect_to @billboard, notice: 'Billboard was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @billboard}
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @billboard.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  def destroy
    @billboard.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'Person was successfully destroyed.' }
      format.json { head :no_content }
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
