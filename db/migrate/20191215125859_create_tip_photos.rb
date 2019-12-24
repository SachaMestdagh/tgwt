class CreateTipPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :tip_photos do |t|
      t.string :photo
      t.references :tip, foreign_key: true

      t.timestamps
    end
  end
end
