class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :title
      t.text :synopsis
      t.integer :sub_score
      t.string :poster_url
      t.string :timer
      t.string :winner_code

      t.timestamps
    end
  end
end
