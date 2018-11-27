class Change

  def initialize
    @coinage = [1, 5, 10, 25, 50, 100]
    @exact_change = []
  end

  def generate(num)
    @num = num
    @coinage.reverse!
    calculate_change
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