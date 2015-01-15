module AlphabetCalc
  class AlphabetDigit

    def initialize(ch)
      @ch = ch
    end

    def to_int
      @ch.to_i(36) - 10
    end

  end
end