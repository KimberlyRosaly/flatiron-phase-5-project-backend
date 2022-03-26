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
	biography: "Reclusive 'lady black thorn' cat-lady, specializing in lint-roller recommendations.",
	image_url: "https://www.dropbox.com/s/mu1m4yqsw60hxqr/IMG_3980.JPG?raw=1"
}
a_a = {
	id: 2,
	name: "Aljona Pomorova",
	title: "Artist | Writer",
	location: "Russia",
	website_url: "https://jaegerybird.wordpress.com/",
	skills: "Illustration, Digital Painting, Sticker Design, Book Design",
	tools: "ink, watercolor",
	biography: "Part-time illustrator and full-time anthropologist.",
	image_url: "https://jaegerybird.files.wordpress.com/2021/09/ytp-_rq_9xe.jpg"
}
s_a = {
	id: 3,
	name: "Samantha Moyse",
	title: "Photographer | Jewelry-Maker | Artist | Writer | Collaborator",
	location: "Long Island, New York",
	website_url: "https://www.etsy.com/shop/SammyRaeCollection",
	skills: "Hand-Made Jewelry, Photography, Event-Organizing",
	tools: "Canon T6 camera, fabric & acrylic paint, natural & synthetic materials, fashion jewelry",
	biography: "Advocate for supporting artists in the local community, focuses on collaboration in all assets in the artworld.",
	image_url: "https://www.dropbox.com/s/2528xoeoffwltcp/44597602_316618195822487_1296817322933092352_n.jpg?raw=1"
}
# //= = = = = = = = = = = = = = = = = = = = = A R T W O R K
# //= = = = = = = = = = = = = = = = = = = = = seeds
default = {
	artist_id: 0,
	title: "",
	medium: "",
	dimensions: "",
	description: "",
	likes: 9,
	image_url: ""
}

internet_art = {
	artist_id: 1,
	title: "the internet.",
	medium: "digital painting | iPad Pro, Apple Pencil, Procreate",
	dimensions: "3000x3000",
	description: "01010110",
	likes: 7,
	image_url: "https://live.staticflickr.com/65535/51642757555_78890b6264_z.jpg"
}
ghost_art = {
	artist_id: 1,
	title: "aygotchuboo",
	medium: "digital painting | iPad Pro, Apple Pencil, Procreate",
	dimensions: "3000x3000",
	description: "",
	likes: 8,
	image_url: "https://www.dropbox.com/s/uwdz33es55qozr4/IMG_1432.jpg?raw=1"
}
bubble_art = {
	artist_id: 2,
	title: "pop",
	medium: "digital painting",
	dimensions: "",
	description: "",
	likes: 9,	
	image_url: "https://jaegerybird.files.wordpress.com/2021/09/pop.jpg"
}
butterfly_art = {
	artist_id: 2,
	title: "Blue.",
	medium: "digital painting",
	dimensions: "1526x2160",
	description: "",
	image_url: "https://www.dropbox.com/s/etefb3ji4f68k1g/art1aljonapomorovaartjaegerybirdwordpress.png?raw=1",
	likes: 25
}
bella_art = {
	artist_id: 1,
	title: "Bella",
	medium: "digital painting | iPad Pro, Apple Pencil, Procreate",
	dimensions: "3000x3000",
	description: "Nothing more can feel like home than that of the presence of neighbors, dogs, and squirrels.",
	likes: 3,	
	image_url: "https://www.dropbox.com/s/gxuwwvcoja6h6i6/IMG_1430%20%282%29.jpg?raw=1"
}
floral_art = {
	artist_id: 3,
	title: "Rose Bead",
	medium: "photography | Canon | artifical flowers, hand-carved jewelry",
	dimensions: "rose gold chain - 17 inches",
	description: "Floral display featuring delicate, hand-carved beaded necklace",
	likes: 9,
	image_url: "https://www.dropbox.com/s/9oa69p5osc2sbbk/95511393_632473274001671_5814468154855784448_n.jpg?raw=1"
}
donut_art = {
	artist_id: 3,
	title: "Sprinkle Donut Bag",
	medium: "photography | Canon | acrylic paint, leatherette bag, acrylic charm",
	dimensions: "9 x 5 3/4 inches",
	description: "Hand-painted donut bag with matching charm",
	likes: 91,
	image_url: "https://www.dropbox.com/s/ta2tmbeff0sxjc5/106616857_670770833505248_6805779265193367578_n.jpg?raw=1"
}
faces_art = {
	artist_id: 2,
	title: "Faces",
	medium: "ink",
	dimensions: "1200 x 1600 px",
	description: "",
	likes: 19,
	image_url: "https://jaegerybird.files.wordpress.com/2021/09/syrx2zi_rkk.jpg"
}



# //= = = = = = = = = = = = = = = = = = = = = 
# //= = = = = = = = = = = = = = = = = = = = = M E T H O D S
artists = [ k_a, a_a, s_a ]
artworks = [ internet_art, ghost_art, bella_art,
			bubble_art, butterfly_art, faces_art,
			donut_art, floral_art ]

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
