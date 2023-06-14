class PagesController < ApplicationController
 # skip_before_action :authenticate_user!, only: :home

  def home
    @games = Game.all
  end

  def components
  end

  def ending_adventure_show
  end

  def bombe
  end

  def defeat
  end

  def bombe_answer
    if params["code"] == "3492179918"
      redirect_to ending_adventure_show_path
    else
    #redirect_to penalty_path(@user_game, @enigma)
    end
  end
end
