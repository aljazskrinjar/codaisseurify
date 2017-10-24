require 'rails_helper'



feature 'Deleting Song Test', js: true do

  let(:artist) { create :artist }
  let(:songTest) { create :song , artist: artist }
  let!(:photo) { create :photo, artist: artist }
  

  scenario "deleting a song" do

    visit artist_path(artist)


    fill_in 'song_name', with: 'hocem te'

    page.execute_script("$('form').submit()")

    fill_in 'song_name', with: 'ljubi ljubi ljubi'

    page.execute_script("$('form').submit()")

    fill_in 'song_name', with: 'nikoli vec'

    page.execute_script("$('form').submit()")




    click_button("ljubi ljubi ljubi")

    expect(page).to_not have_content('ljubi ljubi ljubi')

  end
end
