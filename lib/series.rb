class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(length)
    if length == 1
      return @digits.chars
    end
    
    [@digits]
  end
end
