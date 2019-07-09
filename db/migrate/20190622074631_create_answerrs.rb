class CreateAnswerrs < ActiveRecord::Migration[5.2]
  def change
    create_table :answerrs do |t|
      t.integer :question_id
      t.string :content

      t.timestamps
    end
  end
end
