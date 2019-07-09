class CreateQuotations < ActiveRecord::Migration[5.2]
  def change
    create_table :quotations do |t|
      t.string :project_name
      t.string :client_name
      t.string :project_type

      t.timestamps
    end
  end
end
