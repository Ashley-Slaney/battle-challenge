feature 'Attack another player' do 
  scenario 'Attack player 2 and get confirmation' do
    sign_in_and_play
    visit('/attack')
    expect(page).to have_content('Ash attacked Frank!')
  end
end