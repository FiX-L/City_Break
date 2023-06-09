class UserGamesController < ApplicationController

  def index
    @user_game = current_user.users
  end


  def create
    raise
    @user_game = UserGame.new
    @user_game.user = current_user
    @user_game.game = Game.find(params[:game_id])
    @user_game.end_of_game_time = Time.now + @user_game.game.max_duration_in_sec
    @user_game.end_of_game_time = @user_game.end_of_game_time + 3600 + 3600
    @user_game.save
    redirect_to user_game_path(@user_game)
  end

  def show
    @user_game = UserGame.find(params[:id])
    @enigmas = Enigma.where(game_id: @user_game.game.id)
  end

  def progression
    @progression = Enigma.all
    @start = @progression.first
  end
end
