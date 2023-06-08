class RemoveBadReferencesFromUserGame < ActiveRecord::Migration[7.0]
  def change
    remove_reference :user_games, :users, foreign_key: true, index: false
    remove_reference :user_games, :games, foreign_key: true, index: false
    add_reference :user_games, :user, foreign_key: true
    add_reference :user_games, :game, foreign_key: true
  end
end
