class Enigma < ApplicationRecord
  belongs_to :point_of_interest
  belongs_to :game, class_name: 'Game'
end
