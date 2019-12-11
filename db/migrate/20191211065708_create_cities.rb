class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :summary
      t.text :content
      t.string :map
      t.string :favorite
      t.string :address
      t.references :countrie, foreign_key: true

      t.timestamps
    end
  end
end
