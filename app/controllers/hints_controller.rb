class HintsController < ApplicationController
  def index
    @hints = Hint.all
  end

  private

  def set_hint
    @hint = Hint.find(params[:id])
  end

  def hint_params
    params.require(:hint).permit(:content, :enigma_id)
  end

end
