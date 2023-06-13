class AddPenaltyToUserGames < ActiveRecord::Migration[7.0]
  def change
    add_column :user_games, :penalty, :integer, default: 0
  end
end
