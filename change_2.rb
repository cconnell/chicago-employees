# You will be creating a method that will take a number of cents and return an array of coins that will be your change. The goal is to return as few coins as possible. Assume that the highest denomination of coins will be a quarter (25 cents). For example: If the method receives 119, the result will be [25, 25, 25, 25, 10, 5, 1, 1, 1, 1]

require 'rspec'

class ChangeMachine

  def output(number)
    change = []
    while number > 0
      if number >= 25
        number -= 25
        change << 25
      elsif number >= 10
        number -= 10
        change << 10
      elsif number >= 5
        number -= 5
         change << 5
      elsif number <= 4
        number -= 1
         change << 1
      end
    end
    change
  end
      

end

RSpec.describe ChangeMachine  do
  
  describe '#output' do
    it 'should return [1] if given 1' do
      cm = ChangeMachine.new
      expect(cm.output(1)).to eq([1])
    end
  end

  describe '#output' do
    it 'should return [1, 1] if given 2' do
      cm = ChangeMachine.new
      expect(cm.output(2)).to eq([1, 1])
    end
  end
  
  describe '#output' do
    it 'should return [1, 1, 1] if given 3' do
      cm = ChangeMachine.new
      expect(cm.output(3)).to eq([1, 1, 1])
    end
  end

  describe '#output' do
    it 'should return [1, 1, 1, 1] if given 4' do
      cm = ChangeMachine.new
      expect(cm.output(4)).to eq([1, 1, 1, 1])
    end
  end

  describe '#output' do
    it 'should return [5] if given 5' do
      cm = ChangeMachine.new
      expect(cm.output(5)).to eq([5])
    end
  end

  describe '#output' do
    it 'should return [5, 1] if given 6' do
      cm = ChangeMachine.new
      expect(cm.output(6)).to eq([5, 1])
    end
  end

  describe '#output' do
    it 'should return [5, 1, 1] if given 7' do
      cm = ChangeMachine.new
      expect(cm.output(7)).to eq([5, 1, 1])
    end
  end

  describe '#output' do
    it 'should return [10] if given 10' do
      cm = ChangeMachine.new
      expect(cm.output(10)).to eq([10])
    end
  end

  describe '#output' do 
    it 'should return [10, 1] if given 11' do
      cm = ChangeMachine.new
      expect(cm.output(11)).to eq([10, 1])
    end
  end

  describe '#output' do
    it 'should return [10, 5, 1] if given 16' do
      cm = ChangeMachine.new
      expect(cm.output(16)).to eq([10, 5, 1])
    end
  end

  describe '#output' do
    it 'should return [25] if given 25' do
      cm = ChangeMachine.new
      expect(cm.output(25)).to eq([25])
    end
  end

  describe '#output' do
    it 'should return [25, 10, 5, 1]' do
      cm = ChangeMachine.new
      expect(cm.output(41)).to eq([25, 10, 5, 1])
    end
  end

end