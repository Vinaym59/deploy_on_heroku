class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :cover
      t.string :language

      t.timestamps
    end
  end
end
