# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
u1 = User.create(username: 'Jeff')
u2 = User.create(username: 'Frida Khalo')
u3 = User.create(username: 'Monet')
u4 = User.create(username: 'Van Gogh')

Artwork.destroy_all
a1 = Artwork.create(artist_id: u4.id, title: 'Starry Night', image_url: 'stn.com')
a2 = Artwork.create(artist_id: u1.id, title: 'Portait', image_url: 'stn2.com')
a3 = Artwork.create(artist_id: u2.id, title: 'Eyebrows', image_url: 'stn3.com')
a4 = Artwork.create(artist_id: u3.id, title: 'Day at the Beach', image_url: 'stn4.com')

ArtworkShare.destroy_all
s1 = ArtworkShare.create(viewer_id: u1.id, artwork_id: a1.id)
s2 = ArtworkShare.create(viewer_id: u1.id, artwork_id: a3.id)
s3 = ArtworkShare.create(viewer_id: u1.id, artwork_id: a4.id)

Comment.destroy_all
c1 = Comment.create(commenter_id: u1.id, artwork_id: a2.id, body: "This is meeeeeeeee......")
c2 = Comment.create(commenter_id: u2.id, artwork_id: a2.id, body: "Where are the eyebrows?")
c3 = Comment.create(commenter_id: u3.id, artwork_id: a2.id, body: "Not enough bridges!")
