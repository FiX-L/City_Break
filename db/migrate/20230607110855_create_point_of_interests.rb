class CreatePointOfInterests < ActiveRecord::Migration[7.0]
  def change
    create_table :point_of_interests do |t|
      t.text :anecdote
      t.string :poster_url

      t.timestamps
    end
  end
end
