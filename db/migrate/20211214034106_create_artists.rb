class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :title
      t.string :location
      t.string :website_url
      t.string :skills
      t.string :tools
      t.string :biography
      t.string :image_url

      t.timestamps
    end
  end
end
