class Enigma < ApplicationRecord
  has_one :point_of_interest
  belongs_to :game, class_name: 'Game'
end
