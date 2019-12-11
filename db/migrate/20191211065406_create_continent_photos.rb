class CreateContinentPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :continent_photos do |t|
      t.string :photo
      t.references :continent, foreign_key: true

      t.timestamps
    end
  end
end
