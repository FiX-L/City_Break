class RemoveColumnTimerAndAddMaxDurationToGames < ActiveRecord::Migration[7.0]

  def change
    remove_column :games, :timer, :string
    add_column :games, :max_duration_in_sec, :integer
  end

end
