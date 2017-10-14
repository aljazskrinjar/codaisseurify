
artist1=Artist.create!(name: "Avseniki", age: 80, bio: "Avseniki are artist from SLovenia and ...", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUUtD06g0jzTBPKDK2hYsmeAQnBtUB3DHIBamkCvjkiFlkxhBHZw")
artist2=Artist.create!(name: "Slaki", age: 70, bio: "Slaki are artist from SLovenia and ...", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUUtD06g0jzTBPKDK2hYsmeAQnBtUB3DHIBamkCvjkiFlkxhBHZw")


song1 = Song.create!(name: "Cebelice",artist: artist1)
song2 = Song.create!(name: "Na Golici",artist: artist1)
song3 = Song.create!(name: "Ta sosedov Francl", artist: artist2)
song4 = Song.create!(name: "Moja mukica", artist: artist2)


photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/aljazcloud/image/upload/v1508014920/61092292_os1xc2.jpg", artist: artist1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/aljazcloud/image/upload/v1508014927/hqdefault_i6zzoj.jpg", artist: artist2)
