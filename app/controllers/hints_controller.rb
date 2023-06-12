class HintsController < ApplicationController
  before_action :set_point_of_interest, only: [:show]

  def index
    @hints = Hint.all
  end

  def show
  end

  private

  def set_hint
    @hint = Hint.find(params[:id])
  end

  def hint_params
    params.require(:hint).permit(:content, :enigma_id)
  end

end
