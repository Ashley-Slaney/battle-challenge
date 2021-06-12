feature 'Attack another player' do 
  background do
    sign_in_and_play
    click_link('Attack')
  end

  scenario 'Attack player 2 and reduce HP by 10' do
    expect(page).to have_content('Ash damaged Frank for 10HP')
  end

  scenario 'display current hp' do
    expect(page).to have_content("Frank's current HP: 50")
  end
end