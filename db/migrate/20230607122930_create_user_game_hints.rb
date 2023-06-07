class CreateUserGameHints < ActiveRecord::Migration[7.0]
  def change
    create_table :user_game_hints do |t|
      t.boolean :is_used, default: true
      t.references :hints, null: false, foreign_key: true
      t.references :user_games, null: false, foreign_key: true

      t.timestamps
    end
  end
end
