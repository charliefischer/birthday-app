class DateOfBirth
  attr_reader :birthday

  def initialize(day, month_text)
    months = {
      "January" => 1,
      "February" => 2,
      "March" => 3,
      "April" => 4,
      "May" => 5,
      "June" => 6,
      "July" => 7,
      "August" => 8,
      "September" => 9,
      "October" => 10,
      "November" => 11,
      "December" => 12
    }
    month = months[month_text]
    @day = day
    @month = month
    @birthday = Time.new(2021, month, day)
  end

  def birthday_checker
    birthday? ? "Happy Birthday" : nil
  end

private 
  def birthday?
    t = Time.now
    @today_day = t.day
    @today_month = t.month
    @day == @today_day && @month == @today_month
  end
end
