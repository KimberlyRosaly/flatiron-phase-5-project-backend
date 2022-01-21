# //= = = = = = = = = = = = = = = = = = = = = A R T I S T
# //= = = = = = = = = = = = = = = = = = = = = seeds
k_a = {
	id: 1,
	name: "Kimberly Rosaly",	
	title: "Artist | Content Creator | Web Developer",
	location: "East Coast, USA",
	website_url: "http://kimrosaly.com/",
	skills: "Digital Art, Photography, Graphic Design",
	tools: "iPad Pro, Apple Pencil, Procreate, oil paint, graphite, ink",
	biography: "Reclusive 'lady black thorn' cat-lady, specializing in lint-roller recommendations."
}
a_a = {
	id: 2,
	name: "Aljona Pomorova",
	title: "Artist | Writer",
	location: "Russia",
	website_url: "https://jaegerybird.wordpress.com/",
	skills: "Illustration, Digital Painting, Sticker Design, Book Design",
	tools: "ink, watercolor",
	biography: "Part-time illustrator and full-time anthropologist."
}
s_a = {
	id: 3,
	name: "Samantha Moyse",
	title: "Photographer | Jewelry-Maker | Artist | Writer | Collaborator",
	location: "Long Island, New York",
	website_url: "",
	skills: "Hand-Made Jewelry, Photography, Event-Organizing",
	tools: "",
	biography: ""
}
# //= = = = = = = = = = = = = = = = = = = = = A R T W O R K
# //= = = = = = = = = = = = = = = = = = = = = seeds
internet_art = {
	artist_id: 1,
	title: "the internet.",
	medium: "digital painting | iPad Pro, Apple Pencil, Procreate",
	dimensions: "3000x3000",
	description: "01010110",
	image_url: "https://live.staticflickr.com/65535/51642757555_78890b6264_z.jpg"
}
bubble_art = {
	artist_id: 2,
	title: "pop",
	medium: "digital painting",
	dimensions: "",
	description: "",
	image_url: "https://jaegerybird.files.wordpress.com/2021/09/pop.jpg"
}

# //= = = = = = = = = = = = = = = = = = = = = 
# //= = = = = = = = = = = = = = = = = = = = = M E T H O D S
artists = [ k_a, a_a, s_a ]
artworks = [ internet_art, bubble_art ]

def seed_some_artists(artists)
	artists.each do |human_being|
		a = Artist.new(human_being)
		a.save
	end
end

def seed_some_artworks(artworks)
	artworks.each do |piece|
		a = Artwork.new(piece)
		a.save
	end
end
# //= = = = = = = = = = = = = = I N V O K E   M E T H O D S 
seed_some_artists(artists)
seed_some_artworks(artworks)
# //= = = = = = = = = = = = = = = = = = = = = 
