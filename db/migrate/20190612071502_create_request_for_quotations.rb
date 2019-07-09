class CreateRequestForQuotations < ActiveRecord::Migration[5.2]
  def change
    create_table :request_for_quotations do |t|
      t.string :competency
      t.string :resource
      t.float :efforts
      t.references :quotation, foreign_key: true

      t.timestamps
    end
  end
end
