class Hint < ApplicationRecord
  belongs_to :enigmas
  has_many :user_games_hints
end
