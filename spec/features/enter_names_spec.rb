feature 'Enter names' do
  scenario 'Player can enter names and submit the form' do
    sign_in_and_play
    expect(page).to have_content('Ash VS Frank')
  end
end