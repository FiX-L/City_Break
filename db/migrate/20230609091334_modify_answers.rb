class ModifyAnswers < ActiveRecord::Migration[7.0]
  def change
    add_column :answers, :is_good_answer, :boolean
  end
end
