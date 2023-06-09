class Enigma < ApplicationRecord
  has_one :point_of_interest
  has_many :answers
  belongs_to :game, class_name: 'Game'
end
