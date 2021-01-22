feature 'Days to go' do
  scenario 'tells you how many days left' do
    visit('/')
    fill_in('name', with: 'Charlie')
    fill_in('day', with: '23')
    select 'January', :from => 'month'
    click_button 'Enter'
    expect(page).to have_content('1 days to go, Charlie')
  end
end
