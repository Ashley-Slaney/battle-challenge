feature 'Enter names' do
  scenario 'Player can enter names and submit the form' do
    visit('/')
    fill_in :player_1, with: 'player one'
    fill_in :player_2, with: 'player two'
    click_on 'Submit'

    save_and_open_page

    expect(page).to have_content('player one VS player two')
  end
end