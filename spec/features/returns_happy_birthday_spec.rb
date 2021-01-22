feature 'Happy Birthday' do
  scenario 'it is your birthday' do
    visit('/')
    fill_in('name', with: 'Charlie')
    fill_in('day', with: '22')
    select 'January', :from => 'month'
    click_button 'Enter'
    expect(page).to have_content("Happy Birthday Charlie!")
  end
end
