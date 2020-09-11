class AddCreatorToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :creator, :integer
  end
end
