feature 'View hit points' do
  scenario 'View player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content("Frank: 60HP")
  end   
end