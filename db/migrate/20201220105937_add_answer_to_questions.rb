class AddAnswerToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :correct_answer, :boolean
  end
end
