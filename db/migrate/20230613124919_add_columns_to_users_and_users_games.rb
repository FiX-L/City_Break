class AddColumnsToUsersAndUsersGames < ActiveRecord::Migration[7.0]
  def change
    add_column :user_games, :succeeded_at, :datetime
    add_column :user_games, :score, :integer
    add_column :users, :nickname, :string
  end
end
