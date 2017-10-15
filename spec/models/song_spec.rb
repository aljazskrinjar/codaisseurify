require 'rails_helper'

RSpec.describe Song, type: :model do
  #shoulda way of validation
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe "Song Artist association test" do
    let(:artist) { create :artist }

    it "song belongs to artist" do

      song= artist.songs.build(name: "Luka")

      expect(song.artist).to eq(artist)
    end

    # OR, go the shoulda way:

    #it { is_expected.to belong_to :user}
  end

end
