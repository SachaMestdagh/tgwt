class CreateArticlePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :article_photos do |t|
      t.string :photo
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
