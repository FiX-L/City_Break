class AddRaferencesPoi < ActiveRecord::Migration[7.0]
  def change
    add_reference :point_of_interests, :enigma, foreign_key: true
  end
end
