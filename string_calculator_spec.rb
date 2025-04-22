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
  end
end
