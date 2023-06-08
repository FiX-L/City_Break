class Hint < ApplicationRecord
  belongs_to :enigma
  has_many :user_games_hints
end
