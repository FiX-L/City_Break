class CreateEnigmas < ActiveRecord::Migration[7.0]
  def change
    create_table :enigmas do |t|
      t.string :title
      t.text :description
      t.references :games, null: false, foreign_key: true
      t.references :point_of_interests, null: false, foreign_key: true
      t.string :order

      t.timestamps
    end
  end
end
