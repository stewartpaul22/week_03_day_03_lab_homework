require('pry')
require_relative('../models/album')
require_relative('../models/artist')

artist1 = Artist.new({'name' => 'Black Sabbath'})
artist2 = Artist.new({'name' => 'Oceansize'})
artist1.save()
artist2.save()

album1 = Album.new({'title' => 'Paranoid', 'genre' => 'metal', 'artist_id' => artist1.id})
album2 = Album.new({'title' => 'Sabbath Bloody Sabbath', 'genre' => 'metal','artist_id' => artist1.id})
album3 = Album.new({'title' => 'Efflorece', 'genre' => 'rock', 'artist_id' => artist2.id})
album4 = Album.new({'title' => 'Everyone Into Position', 'genre' => 'rock', 'artist_id' => artist2.id})
album5 = Album.new({'title' => 'Frames', 'genre' => 'rock', 'artist_id' => artist2.id})
album1.save()
album2.save()
album3.save()
album4.save()
album5.save()

artist1.name = 'White Sabbath'
artist1.edit()

album5.title = 'FDASFAEAGAADSAFS'
album5.edit()

album4.delete()
album5.delete()

binding.pry
nil
