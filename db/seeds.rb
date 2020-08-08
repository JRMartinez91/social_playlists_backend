# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Casey Ferraro', password: 'Sicily')
User.create(username: 'Bellgrey Bianca', password: 'sharkslovemetal')
User.create(username: 'Lash Deepchurch', password: 'spacesquid')

cf = User.find_by username:'Casey Ferraro'
cf = cf.id
bb = User.find_by username:'Bellgrey Bianca'
bb = bb.id
ld = User.find_by username:'Lash Deepchurch'
ld = ld.id

tj = Playlist.create(title:'Trauma Jams', user_id:cf)
tj = tj.id
hmc = Playlist.create(title:'Heavy Metal Classics',user_id:bb)
hmc = hmc.id
# ea = Playlist.create(title:'Eldritch Ambience',user_id:ld)
# ea = ea.id

Track.create(title:'The Metal',artist:'Tenacious D',url:'https://www.youtube.com/watch?v=qR7U1HIhxfA', playlist_id:hmc)
Track.create(title:'Dr.Feelgood',artist:'Motley Crue',url:'https://www.youtube.com/watch?v=rhT3MhzTsWQ' , playlist_id:hmc)
Track.create(title:'Thunderstruct',artist:'AC/DC',url:'https://www.youtube.com/watch?v=lhg9bYNLvOg' , playlist_id:hmc)
Track.create(title:'Crazy Train',artist:'Black Sabbath',url:'https://www.youtube.com/watch?v=RMR5zf1J1Hs', playlist_id:hmc)

Track.create(title:'The Mind Electric',artist:'Miracle Musical',url:'https://www.youtube.com/watch?v=_nvPGRwNCm0' ,playlist_id:tj)
Track.create(title:'I Can\'t Decide',artist:'The Scissor Sisters',url:'https://www.youtube.com/watch?v=buYrBbwyCGE', playlist_id:tj)
Track.create(title:'The Stand',artist:'Mother Mother',url:'https://www.youtube.com/watch?v=wgy8dKRrI9o' ,playlist_id:tj)
Track.create(title:'Honey I\'m Home',artist:'Ghost',url:'https://www.youtube.com/watch?v=xHffjNbWmig' ,playlist_id:tj)
