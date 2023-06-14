class PagesController < ApplicationController
 # skip_before_action :authenticate_user!, only: :home

  def home
    @games = Game.all
  end

  def components
  end

  def ending_adventure_show
  end

  # def bombe
  #   @user_game = UserGame.where(user: current_user).last
  # end

  def defeat
  end

  # def bombe_answer
  #   if params["code"] == "3492179918"
  #     redirect_to ending_adventure_show_path
  #   end
  # end
end
