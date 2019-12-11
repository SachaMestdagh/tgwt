class CreateSleepPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :sleep_photos do |t|
      t.string :photo
      t.references :sleep, foreign_key: true

      t.timestamps
    end
  end
end
