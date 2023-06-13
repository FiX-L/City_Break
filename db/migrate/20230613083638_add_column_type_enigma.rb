class AddColumnTypeEnigma < ActiveRecord::Migration[7.0]
  def change
    add_column :enigmas, :type, :string
  end
end
