class RemoveColumnGameTimerAndAddEndOfGameDeadlineToUserGames < ActiveRecord::Migration[7.0]
  def change
    remove_column :user_games, :game_timer, :string
    add_column :user_games, :end_of_game_time, :datetime
  end
end
