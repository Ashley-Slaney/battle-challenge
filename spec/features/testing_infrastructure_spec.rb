feature 'Enter names' do
  scenario 'Player can enter names and submit the form' do
    visit('/')
    fill_in :player_1, with: 'Ash'
    fill_in :player_2, with: 'Frank'
    click_on 'Submit'

    save_and_open_page

    expect(page).to have_content('Ash VS Frank')
  end
end

feature 'View hit points' do
  scenario 'view player 2s hit points' do
    visit('/')
    fill_in :player_1, with: 'Ash'
    fill_in :player_2, with: 'Frank'
    click_on 'Submit'

    expect(page).to have_content('Frank: 100HP')
  end   
end 