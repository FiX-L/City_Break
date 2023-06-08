class RemoveColumnIdAndPutNew < ActiveRecord::Migration[7.0]
  def change
    remove_reference :hints, :enigmas, foreign_key: true, index: false
    add_reference :hints, :enigma, foreign_key: true
  end
end
