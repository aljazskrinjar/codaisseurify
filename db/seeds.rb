
artist1=Artist.create!(name: "Avseniki", age: 80, bio: "Ansambel bratov Avsenik je v svetovnem merilu verjetno najuspešnejša slovenska glasbena skupina. Delovala je od leta 1953 do 1990.", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUUtD06g0jzTBPKDK2hYsmeAQnBtUB3DHIBamkCvjkiFlkxhBHZw")
artist2=Artist.create!(name: "Slaki", age: 70, bio: "Slak je ustvaril novo glasbeno smer z ljudskim instrumentom – diatonično harmoniko in je hkrati avtor diatonične harmonike, kakršno poznamo danes.", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUUtD06g0jzTBPKDK2hYsmeAQnBtUB3DHIBamkCvjkiFlkxhBHZw")
artist3=Artist.create!(name: "Mladi Dolenci", age: 35, bio: "Ansambel Mladi Dolenjci so narodnozabavna zasedba, ki deluje od leta 1996. Sedež imajo v Novem mestu. Gre za trio zasedbo s troglasnim petjem. ", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUUtD06g0jzTBPKDK2hYsmeAQnBtUB3DHIBamkCvjkiFlkxhBHZw")


song1 = Song.create!(name: "Cebelice",artist: artist1)
song2 = Song.create!(name: "Na Golici",artist: artist1)
song3 = Song.create!(name: "Ta sosedov Francl", artist: artist2)
song4 = Song.create!(name: "Moja mukica", artist: artist2)
song5 = Song.create!(name: "Ljubi me", artist: artist3)
song6 = Song.create!(name: "Nekoc si rekla mi", artist: artist3)


photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/aljazcloud/image/upload/v1508014920/61092292_os1xc2.jpg", artist: artist1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/aljazcloud/image/upload/v1508014927/hqdefault_i6zzoj.jpg", artist: artist2)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/aljazcloud/image/upload/v1508088080/hqdefault_1_cwhi7o.jpg", artist: artist3)
