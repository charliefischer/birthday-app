describe DateOfBirth do
  it 'returns the date of your birthday' do
    charlie = DateOfBirth.new(02, "January")
    expect(charlie.birthday).to eq Date.new(2021, 01, 02)
  end

  it 'says happy birthday if it is you birthday' do
    t = Date.today
    day = t.day
    month = t.month
    charlie = DateOfBirth.new(day, t.strftime('%B'))
    expect(charlie.birthday_checker).to eq true
  end

  it 'tells you how long left till your birthday' do
    charlie = DateOfBirth.new(23, "January")
    expect(charlie.birthday_checker).to eq 1
  end
end
