class AttractionsController < ApplicationController
  def index
    @attractions = Attraction.all
    @user = User.find(current_user)
  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.create(attraction_params)
    redirect_to attraction_path(@attraction)
  end

  private

  def user_params
    params.require(:attraction).permit(:name, :nausea_rating, :happiness_rating, :tickets, :min_height)
  end
end
