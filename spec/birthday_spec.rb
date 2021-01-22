describe DateOfBirth do
  it 'returns the date of your birthday' do
    charlie = DateOfBirth.new(02, "January")
    expect(charlie.birthday).to eq Time.new(2021, 01, 02)
  end

  it 'says happy birthday if it is you birthday' do
    t = Time.now
    day = t.day
    month = t.month
    charlie = DateOfBirth.new(day, t.strftime('%B'))
    expect(charlie.birthday_checker).to eq "Happy Birthday"
  end
end
