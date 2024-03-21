RSpec.describe '#even? method' do

  # context can work as a substitute for the keywork "describe" when adding context inside a group 
  # example 
  context 'with even number' do
    it 'should return true' do
      expect(2.even?).to(eq(true))
    end
  end

  context 'with odd number' do
    it 'should return false' do
      expect(3.even?).to(eq(false))
    end
  end
  
end