class UserGameHint < ApplicationRecord
  belongs_to :hints
  belongs_to :user_games
end
