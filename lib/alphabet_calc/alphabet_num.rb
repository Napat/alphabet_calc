module AlphabetCalc
  class AlphabetNum

    def initialize(str)
      @digits = Array.new
      str.split('').each do |ch|
        @digits.push AlphabetDigit.new(ch)
      end
    end

    def to_int
      sum = 0
      @digits.each do |digit|
        sum = sum * 26
        sum = sum + digit.to_int
      end
      return sum
    end

  end
end