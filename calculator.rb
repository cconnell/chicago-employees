require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def average(number_one, number_two, number_three)
    return (number_one + number_two + number_three) / 3
  end

  def remainder(number_one, number_two)
    return (number_one / number_two).to_f
  end

  def double(number_one)
    return number_one * number_one
  end

end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
        calc = Calculator.new
        sum = calc.add(2,4)
        expect(sum).to eq(6) 
    end
  end

  describe '#square' do
    it 'should return the product of a number' do
      calc = Calculator.new
      product = calc.square(5)
      expect(product).to eq(25)
    end
  end 

  describe '#subtract' do
    it 'should return the difference between two numbers' do
        calc = Calculator.new
        difference = calc.subtract(10,4)
        expect(difference).to eq(6) 
    end
  end

  describe '#multiply' do
      it 'should return the product of two numbers' do
          calc = Calculator.new
          product = calc.multiply(10,4)
          expect(product).to eq(40) 
      end
    end

  describe '#divide' do
    it 'should return the first number divided by the second number' do
      calc = Calculator.new
      division = calc.divide(9,3)
      expect(division).to eq(3)
    end
  end

  describe '#power' do
    it 'should return the first number to the power of the second number' do
      calc = Calculator.new
      exponent = calc.power(4,3)
      expect(exponent).to eq(64)
    end
  end

  describe '#average' do
    it 'should return the average of three numbers' do
      calc = Calculator.new
      averaged = calc.average(10,20,30)
      expect(averaged).to eq(20)
    end
  end

  describe '#remainder' do
    it 'should return the remainder' do
      calc = Calculator.new
      leftover = calc.remainder(11,10)
      expect(leftover).to eq(1)
    end
  end

  describe '#double' do
    it 'should return the double of the number' do
      calc = Calculator.new
      squared = calc.double(10)
      expect(squared).to eq(100)
    end
  end

end


