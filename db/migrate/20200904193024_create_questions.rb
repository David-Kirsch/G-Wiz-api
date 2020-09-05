class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :related_words, array: true, default: []
      t.string :option_1
      t.string :option_2
      t.integer :correct_answer
      t.timestamps
    end
  end
end
