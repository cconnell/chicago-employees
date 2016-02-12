require "rspec"

class CoinStar


def change(number)
 array = Array.new  
   while number > 0
   if number % 25 == 0  
      array << 25
      number -= 25  
   elsif number % 10 == 0
     array << 10 
      number -= 10 
   elsif number % 5 == 0
     array << 5 
     number -= 5  
   elsif number % 1 == 0 
     array << 1 
     number -= 1  
   end
  end  
end

end







RSpec.describe CoinStar do



describe '#change' do 
 it 'should return 25 given 25' do 
   cs = CoinStar.new 
   expect(cs.change(25)).to eq([25])
 end

 it 'should return 10 if given 10' do
   cs = CoinStar.new
   expect(cs.change(10)).to eq([10])
 end

 it 'should return 5 if given 5' do 
   cs = CoinStar.new 
   expect(cs.change(5)).to eq([5])
 end

 it 'should return 1 if given 1' do
   cs = CoinStar.new
   expect(cs.change(1)).to eq([1])
 end

 it 'should return an array of 2 number if given 50' do 
   cs = CoinStar.new 
   expect(cs.change(50)).to eq([25, 25])

 end


end 
end


cs = CoinStar.new 
p cs.change(66)