class AddColumnNamesToCountries < ActiveRecord::Migration[5.2]
  def change
    add_column :countries, :name, :string
    add_column :countries, :location, :string
  end
end
