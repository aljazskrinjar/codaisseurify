require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
   it "is invalid without a name" do

     artist = Artist.new(name: "")
     artist.valid?
     expect(artist.errors).to have_key(:name)
   end

   it "This invalid:the bio is too long (>500 chars)" do

     artist = Artist.new(bio: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibgadfgsdgfdsgsfdgfdsg")
     artist.valid?
     expect(artist.errors).to have_key(:bio)
   end

   #using shoulda-matchers
   it { is_expected.to validate_presence_of(:age) }

  end

  describe "Artist song association" do
  let(:artist) { create :artist }
  let!(:song) { create :song, artist: artist }

  it "has many songs" do
    song1 = artist.songs.new(name: "En hribcek bom kupil")
    song2 = artist.songs.new(name: "Pomladna veselica")
    song3 = artist.songs.new(name: "V dolini tihi")
    song4 = artist.songs.new(name: "Tiste tri besede")

    expect(artist.songs).to include(song1)
    expect(artist.songs).to include(song2)
    expect(artist.songs).to include(song3)
    expect(artist.songs).to include(song4)
  end

  
end


end
