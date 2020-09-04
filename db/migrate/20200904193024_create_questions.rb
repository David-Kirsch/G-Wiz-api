class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :related_words
      t.string :option_1
      t.string :option_2
      t.integer :correct_answer
      t.integer :user_id

      t.timestamps
    end
  end
end
