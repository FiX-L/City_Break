class UserGame < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :user_games_hints
end
