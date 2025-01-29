RSpec.shared_examples 'Array, String, Hash, Test' do
  it 'should have length of 3' do
    expect(subject.length).to(eq(3))
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples 'Array, String, Hash, Test'
  # it 'should have length of 3' do
  #   expect(subject.length).to(eq(3))
  # end
end

RSpec.describe String do
  subject { 'abc' }
  include_examples 'Array, String, Hash, Test'
  # it 'should have length of 3' do
  #   expect(subject.length).to(eq(3))
  # end
end

RSpec.describe Hash do
  subject { {a: 1, b: 2, c: 3} }
  include_examples 'Array, String, Hash, Test'
  # it 'should have length of 3' do
  #   expect(subject.length).to(eq(3))
  # end
end

class Test
  def length
    3
  end
end

RSpec.describe Test do
  subject { described_class.new }
  include_examples 'Array, String, Hash, Test'
  # it 'should have length of 3' do
  #   expect(subject.length).to(eq(3))
  # end
end