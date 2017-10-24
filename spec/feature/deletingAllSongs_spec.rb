require 'rails_helper'



feature 'Deleting all songs', js: true do

  let(:artist) { create :artist }
  let(:songTest) { create :song , artist: artist }
  let!(:photo) { create :photo, artist: artist }


  scenario "deleting a song" do

    visit artist_path(artist)
    fill_in 'song_name', with: 'ljubi ljubi ljubi'
    page.execute_script("$('form').submit()")

    fill_in 'song_name', with: 'nekoc'
    page.execute_script("$('form').submit()")

    fill_in 'song_name', with: 'ko bom prisel'
    page.execute_script("$('form').submit()")




    click_button("Delete All Songs")

    expect( artist.songs.count ).to eq "0"

  end
end
