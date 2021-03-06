class Change

  def initialize
    @coinage = [1, 5, 10, 25, 50, 100]
    @coinage.reverse!
    @exact_change = []
  end

  def generate(num)
    if num < 0
      raise ArgumentError
    else
      @num = num
      calculate_change
    end
  end

  def calculate_change
    @coinage.each do |x|
      if x <= @num
        @num -= x
        @exact_change << x
        calculate_change
      elsif @num == 0
        break
      end
    end
    @exact_change.sort!
  end
end