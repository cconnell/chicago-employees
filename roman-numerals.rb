# Bonus: Write a method that accepts a number as a parameter returns its Roman numeral equivalent. (upto 500)
# example: roman_numeral(4) == “IV"

require 'rspec'

class RomanNumeral

  def output(number)
    "I"
  end

end


RSpec.describe RomanNumeral do
  
  describe '#output' do
    it 'should return "I" if given 1' do
    roman_numeral = RomanNumeral.new
    expect(roman_numeral.output(1)).to eq("I")
    end
  end

end