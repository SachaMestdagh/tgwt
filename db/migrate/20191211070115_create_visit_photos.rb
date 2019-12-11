class CreateVisitPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :visit_photos do |t|
      t.string :photo
      t.references :visit, foreign_key: true

      t.timestamps
    end
  end
end
