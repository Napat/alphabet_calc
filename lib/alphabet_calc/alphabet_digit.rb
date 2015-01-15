module AlphabetCalc
  class AlphabetDigit

    def initialize(input)
      if input =~ /\A\d+\z/
        @num = input.to_i
        @ch = (@num + 10).to_s(36)
      else
        @ch = input
        @num = @ch.to_i(36) - 10
      end
    end

    def to_int
      @num
    end

    def to_str
      @ch
    end

  end
end