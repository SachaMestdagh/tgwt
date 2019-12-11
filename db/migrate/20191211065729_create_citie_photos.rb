class CreateCitiePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :citie_photos do |t|
      t.string :photo
      t.references :citie, foreign_key: true

      t.timestamps
    end
  end
end
