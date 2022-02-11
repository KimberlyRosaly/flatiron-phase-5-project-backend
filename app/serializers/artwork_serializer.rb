class ArtworkSerializer < ActiveModel::Serializer
  # DECLARE THE WHITELIST OF ATTRIBUTES TO BE SERIALIZED
  attributes :id, :artist_id, :title, :medium, :dimensions, :description, :image_url, :likes
  
  # RELATIONSHIP | ASSOCIATION TO ITS ARTIST MODEL
  # WILL DISPLAY ITS ASSOCIATED ARTIST AS AN ATTRIBUTE WITH ALL THE ARTIST'S DATA NESTED INSIDE
  belongs_to :artist
end
 