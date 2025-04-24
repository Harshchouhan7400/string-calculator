require 'rspec'
require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe '#sum_of_numbers' do
    it "returns 0 when input string is empty" do
      string_calculator = StringCalculator.new("")
      expect(string_calculator.sum_of_numbers).to eq(0)
    end

    it "returns number when input is a single number" do
      string_calculator = StringCalculator.new("1")
      expect(string_calculator.sum_of_numbers).to eq(1)
    end

    it "returns the sum of comma-separated numbers" do
      string_calculator = StringCalculator.new("1,5")
      expect(string_calculator.sum_of_numbers).to eq(6)
    end

    it "handles newlines and commas between numbers and returns their sum" do
      string_calculator = StringCalculator.new("1\n2,3")
      expect(string_calculator.sum_of_numbers).to eq(6)
    end

    it "handles mixed delimiters (comma and newline) and returns their sum" do
        string_calculator = StringCalculator.new("1\n2,3\n4")
        expect(string_calculator.sum_of_numbers).to eq(10)
    end
  end
end
