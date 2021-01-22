require 'date'
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
    @day = day.to_i
    @month = month.to_i
    @birthday = Date.new(2021, @month, @day)
  end

  def birthday_checker
    birthday? ? happy_birthday : how_long_left
  end

private
  def happy_birthday
    true
  end

  def how_long_left
    @birthday -= Date.today
    @birthday.to_i >= 1 ? @birthday.to_i : @birthday.to_i + 365
  end

  def birthday?
    t = Date.today
    @today_day = t.day
    @today_month = t.month
    @day == @today_day && @month == @today_month
  end
end
