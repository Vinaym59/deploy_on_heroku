class CreateQuoations < ActiveRecord::Migration[5.2]
  def change
    create_table :quoations do |t|
      t.integer :number
      t.string :type
      t.string :list

      t.timestamps
    end
  end
end
