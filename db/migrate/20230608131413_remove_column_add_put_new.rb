class RemoveColumnAddPutNew < ActiveRecord::Migration[7.0]
  def change
    remove_reference :user_game_hints, :hints, foreign_key: true, index: false
    remove_reference :user_game_hints, :user_games, foreign_key: true, index: false
    add_reference :user_game_hints, :hint, foreign_key: true
    add_reference :user_game_hints, :user_game, foreign_key: true
  end
end
