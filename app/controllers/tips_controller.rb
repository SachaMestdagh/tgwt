class TipsController < ApplicationController
    before_action :set_tip, only: [:index, :show, :edit, :update, :destroy]


  def index
    @tips = Tip.all
  end

  def new
    @tip = Tip.new
  end

  def create
    @tip = Tip.new(tip_params)
    @tip.photo_list = params[:tip][:tip_photos]
    if @tip.save
     redirect_to tip_path(@tip)
   else
    render :new
    end
  end

  def show
  end

  def update
    @tip.update(tip_params)
    redirect_to tip_path(@tip)
  end

  def destroy
    @tip.destroy
    redirect_to blog_path
  end

def set_tip
    @tip = Tip.find(params[:id])
  end

  def tip_params
    params.require(:tip).permit(:title, :summary, :content, :tip_photos)
  end
end
