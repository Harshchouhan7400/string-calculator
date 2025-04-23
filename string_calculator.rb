class StringCalculator
  def initialize(string_numbers)
    @string_numbers = string_numbers
  end

  def sum_of_numbers
    return 0 if @string_numbers.empty?

    @string_numbers.to_i
    @string_numbers.split(/,|\n/).map(&:to_i).sum
  end
end
