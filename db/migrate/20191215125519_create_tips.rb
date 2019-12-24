class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.string :title
      t.string :summary
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
