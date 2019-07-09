class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :number
      t.string :type
      t.float :marks

      t.timestamps
    end
  end
end
