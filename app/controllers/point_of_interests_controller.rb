class PointOfInterestsController < ApplicationController
  before_action :set_point_of_interest, only: [:show]
  def index
    @points_of_interest = PointOfInterest.all
  end

  def show
    @user_game = UserGame.where(user: current_user).last
  end


  private

  def set_point_of_interest
    @point_of_interest = PointOfInterest.find(params[:id])
  end

  def point_of_interest_params
    params.require(:point_of_interest).permit(:anecdote, :poster_url)
  end
end
