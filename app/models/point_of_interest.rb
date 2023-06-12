class PointOfInterest < ApplicationRecord
  has_many :enigmas

  def enigma
    enigmas.first
  end
end
