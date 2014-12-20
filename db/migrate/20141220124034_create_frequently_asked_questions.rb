class CreateFrequentlyAskedQuestions < ActiveRecord::Migration
  def change
    create_table :frequently_asked_questions do |t|
      t.string :title
      t.string :slug
      t.text :question
      t.text :answer

      t.timestamps
    end
  end
end
