class ChangeWrongColumnForeignKey < ActiveRecord::Migration[7.0]
  def change
    remove_reference :enigmas, :games, foreign_key: true, index: false
    remove_reference :enigmas, :point_of_interests, foreign_key: true, index: false
    add_reference :enigmas, :game, foreign_key: true
    add_reference :enigmas, :point_of_interest, foreign_key: true
  end
end
