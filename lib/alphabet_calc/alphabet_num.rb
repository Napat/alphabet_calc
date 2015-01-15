module AlphabetCalc
  class AlphabetNum

    def initialize(input)

      @digits = Array.new

      if input.is_a?(Integer)

        @digits.unshift AlphabetDigit.new(0) if input == 0

        while input > 0 do
          @digits.unshift AlphabetDigit.new( input % 26 )
          input = input / 26
        end

      else

        input.split('').each do |ch|
          @digits.push AlphabetDigit.new(ch)
        end

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

    def to_str
      @digits.map{ |digit| digit.to_str }.join
    end

  end
end