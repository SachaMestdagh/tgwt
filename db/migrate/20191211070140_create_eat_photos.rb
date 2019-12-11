class CreateEatPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :eat_photos do |t|
      t.string :photo
      t.references :eat, foreign_key: true

      t.timestamps
    end
  end
end
