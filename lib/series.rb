class Series
  def initialize(digits)
    @digits = digits.chars
  end

  def slices(length)
    consecutive_digits = @digits.each_cons(length)
    consecutive_digits.map(&:join)
  end
end
