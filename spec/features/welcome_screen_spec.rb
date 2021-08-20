feature 'Displays welcome message' do
  scenario 'When going to the home screen it shows the welcome message' do
      visit '/'
      expect(page).to have_content('Welcome to your personal diary')
  end
end