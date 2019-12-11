class CreateContinents < ActiveRecord::Migration[5.2]
  def change
    create_table :continents do |t|
      t.string :name
      t.string :summary
      t.text :content
      t.string :favorite
      t.string :address
      t.string :map
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
