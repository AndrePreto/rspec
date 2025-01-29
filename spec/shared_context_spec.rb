RSpec.shared_context 'Shared Context' do
  before do
    @foods = []
  end

  def helper_method
    5
  end

  let(:test) { [1, 2, 3] }
end

RSpec.describe 'first example group' do
  include_context 'Shared Context'

  it 'can use outside instance variables' do
    expect(@foods.length).to(eq(0))
    @foods << 'Sushi'
    expect(@foods.length).to(eq(1))
  end

  it 'can reuse outside instance variables' do
    expect(@foods.length).to(eq(0))
  end

  it 'can use shared helper methods' do 
    expect(helper_method).to(eq(5))
  end
end

RSpec.describe 'second example group' do
  include_context 'Shared Context'

  it 'can use outside let variables' do
    expect(test.length).to(eq(3))
  end

end
