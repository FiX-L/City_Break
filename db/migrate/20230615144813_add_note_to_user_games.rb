class AddNoteToUserGames < ActiveRecord::Migration[7.0]
  def change
    add_column :user_games, :note, :text
  end
end
