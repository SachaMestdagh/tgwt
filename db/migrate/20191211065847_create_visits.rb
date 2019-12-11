class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.string :name
      t.string :address
      t.string :summary
      t.text :content
      t.string :website_url
      t.string :instagram_handle
      t.integer :price_range
      t.integer :rating
      t.references :citie, foreign_key: true

      t.timestamps
    end
  end
end
