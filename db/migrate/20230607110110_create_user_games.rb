class CreateUserGames < ActiveRecord::Migration[7.0]
  def change
    create_table :user_games do |t|
      t.references :users, null: false, foreign_key: true
      t.references :games, null: false, foreign_key: true
      t.boolean :finish, default: false
      t.integer :progression
      t.boolean :answered_with_good_answer_enigma, default: false
      t.string :game_timer
      t.string :guess_code
      t.string :end_at

      t.timestamps
    end
  end
end
