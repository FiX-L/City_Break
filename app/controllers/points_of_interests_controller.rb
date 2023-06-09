class PointsOfInterestController < ApplicationController
  def index
    @points_of_interest = PointOfInterest.all
  end

  private

  def set_point_of_interest
    @point_of_interest = PointOfInterest.find(params[:id])
  end

  def point_of_interest_params
    params.require(:point_of_interest).permit(:anecdote, :poster_url)
  end
end
