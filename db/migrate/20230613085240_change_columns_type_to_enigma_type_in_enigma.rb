class ChangeColumnsTypeToEnigmaTypeInEnigma < ActiveRecord::Migration[7.0]
  def change
    rename_column :enigmas, :type, :enigma_type

  end
end
