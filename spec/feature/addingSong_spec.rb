require 'rails_helper'



feature 'AddingSongsTest', js: true do

  let(:artist) { create :artist }
  let(:songTest) { create :song , artist: artist }
  let!(:photo) { create :photo, artist: artist }


  scenario "adding a song and then find it on page" do

    visit artist_path(artist)
    fill_in 'song_name', with: 'ljubi ljubi ljubi'

    page.execute_script("$('form').submit()")

    expect(page).to have_content('ljubi ljubi ljubi')
  end
end
