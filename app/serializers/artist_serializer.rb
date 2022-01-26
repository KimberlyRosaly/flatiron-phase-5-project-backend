class ArtistSerializer < ActiveModel::Serializer
  # DECLARE THE WHITELIST OF ATTRIBUTES TO BE SERIALIZED
  attributes :id, :name, :title, :location, :website_url, :skills, :tools, :biography, :image_url

  # RELATIONSHIP | ASSOCIATION TO THE ARTWORK MODEL
  # WILL DISPLAY ALL ASSOCIATED ARTWORKS WITH EACH PARTICULAR ARTIST DATA OUPUT
  has_many :artworks
end
 