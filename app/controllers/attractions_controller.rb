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
