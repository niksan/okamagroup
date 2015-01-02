class CreateFrequentlyAskedQuestions < ActiveRecord::Migration
  def change
    create_table :frequently_asked_questions do |t|
      t.text :question
      t.text :answer

      t.timestamps
    end
  end
end
