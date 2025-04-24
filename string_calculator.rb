class StringCalculator
  def initialize(string_numbers)
    @string_numbers = string_numbers
  end

  def sum_of_numbers
    return 0 if @string_numbers.empty?

    @string_numbers.to_i
    delimiter = handle_custom_delimiter
    @string_numbers.split(delimiter).map(&:to_i).sum
  end

  private
  # This method checks if the string starts with a custom delimiter
  def handle_custom_delimiter
    return /,|\n/ unless @string_numbers.start_with?("//")

    delimiter, rest = @string_numbers[2], @string_numbers[4..]
    @string_numbers = rest
    delimiter
  end
end
