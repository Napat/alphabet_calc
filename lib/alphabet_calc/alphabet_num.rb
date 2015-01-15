module AlphabetCalc
  class AlphabetNum

    def initialize(input)

      @digits = Array.new

      if input =~ /\A\d+\z/

        value = input.to_i
        @digits.unshift AlphabetDigit.new('0') if value == 0

        while value > 0 do
          @digits.unshift AlphabetDigit.new( (value % 26).to_s )
          value = value / 26
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