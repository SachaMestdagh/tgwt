class ContinentsController < ApplicationController
   before_action :set_article, only: [:index, :show, :edit, :update, :destroy]


  def index
    @continents = Continent.all
  end

  def new
    @continent = Continent.new
  end

  def create
    @continent = Continent.new(continent_params)
    @continent.photo_list = params[:continent][:continent_photos]
    if @continent.save
     redirect_to continent_path
   else
    render :new
    end
  end

  def show
  end

  def update
    @continent.update(continent_params)
    redirect_to continent_path(@continent)
  end

  def destroy
    @continent.destroy
    redirect_to
  end

def set_continent
    @continent = Continent.find(params[:id])
  end

  def continent_params
    params.require(:continent).permit(:title, :summary, :content, :continent_photo)
  end
end
