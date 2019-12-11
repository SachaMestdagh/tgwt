class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :summary
      t.text :content
      t.string :address
      t.string :map
      t.string :favorite
      t.references :continent, foreign_key: true

      t.timestamps
    end
  end
end
