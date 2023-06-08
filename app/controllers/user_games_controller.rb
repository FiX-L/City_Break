class UserGamesController < ApplicationController
  def create
    @hint = hint.all
    @game = Game.first
    @user_game = User_Game.create(current_user[:id])
    redirect_to game_path(@game)
  end
end
