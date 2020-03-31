class Series
  def initialize(digits)
    @digits = digits.chars
  end

  def slices(length)
    raise ArgumentError if length > @digits.length

    consecutive_digits = @digits.each_cons(length)
    consecutive_digits.map(&:join)
  end
end
