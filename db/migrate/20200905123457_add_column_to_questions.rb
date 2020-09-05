class AddColumnToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :level, :string
    add_column :questions, :difficulty, :integer
  end
end
