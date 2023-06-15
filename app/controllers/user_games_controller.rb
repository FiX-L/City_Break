class UserGamesController < ApplicationController

  def index
    @user_game = current_user.users
  end


  def create
    @user_game = UserGame.new
    @user_game.user = current_user
    @user_game.game = Game.find(params[:game_id])
    @user_game.end_of_game_time = Time.now + @user_game.game.max_duration_in_sec
    @user_game.save
    redirect_to enigma_path(@user_game.game.enigmas.first)
  end

  def show
    @user_game = UserGame.find(params[:id])
    @enigmas = Enigma.where(game_id: @user_game.game.id)
  end

  def progression
    @progression = Enigma.all
    @start = @progression.first
  end

  def penalty
    @user_game = UserGame.find(params[:user_game_id])
    @user_game.penalty += 1
    @user_game.save
    @enigma = Enigma.find(params[:enigma_id])

    respond_to do |format|
      format.json
    end
  end


  def victory
    @user_game = UserGame.find(params[:id])

    if params["code"] == "3492179918"

      @user_game.succeeded_at = Time.now
      @user_game.save
      redirect_to ending_adventure_show_path
    else
      @user_game.penalty += 1
      @user_game.save
      redirect_to enigma_path(Enigma.last)
    end


  end
end
