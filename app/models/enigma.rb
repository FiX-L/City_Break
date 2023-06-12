class Enigma < ApplicationRecord
  belongs_to :point_of_interest, optional: true
  has_many :answers
  belongs_to :game, class_name: 'Game'
end
