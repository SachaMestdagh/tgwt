class CreateCountriePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :countrie_photos do |t|
      t.string :photo
      t.references :countrie, foreign_key: true

      t.timestamps
    end
  end
end
