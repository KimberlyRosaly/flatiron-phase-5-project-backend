class CreateArtworks < ActiveRecord::Migration[6.1]
  def change
    create_table :artworks do |t|
      t.belongs_to :artist, null: false, foreign_key: true
      
      t.string :title
      t.string :medium
      t.string :dimensions
      t.string :description
      t.string :image_url

      t.integer :likes

      t.timestamps
    end
  end
end
