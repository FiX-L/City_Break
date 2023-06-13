class AddColumnsToPointOfInterests < ActiveRecord::Migration[7.0]
  def change
    add_column :point_of_interests, :titre, :text
    add_column :point_of_interests, :indication_next_step, :text
  end
end
