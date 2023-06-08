class ChangeOrderTypeInEnigma < ActiveRecord::Migration[7.0]
  def change
    remove_column :enigmas, :order, :string
    add_column :enigmas, :order_in_the_game, :integer
  end
end
