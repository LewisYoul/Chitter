feature 'sign out' do
  scenario 'the sign out button should not be present if not signed in' do
    visit('/')
    expect(page).not_to have_content('Sign out')
  end
  scenario 'after clicking sign out the user is no longer signed in' do
    sign_up
    click_button('Sign Out')
    expect(page).not_to have_content('Logged in as Megadrive')
  end
  scenario 'after clicking sign out the user is no longer signed in' do
    sign_up
    click_button('Sign Out')
    expect(page).to have_current_path('/posts')
  end
end
