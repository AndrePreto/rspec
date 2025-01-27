class King
  attr_reader :name

  def initialize(name)
    @name = name
  end

end

RSpec.describe King do
  #described_class is an RSpec helper method that always refers to the class that is being tested
  #in this case described_class refers to the class King
  subject { described_class.new('Bob') } #this is the same as subject { King.new('Bob') }
  let(:steve) { described_class.new('Steve') } #this is the same as let(:steve) { King.new('Bob') }

  it 'should have Bob as the default name' do
    expect(subject.name).to(eq('Bob'))
  end

  it 'should have the name Steve when the new King comes' do
    expect(steve.name).to(eq('Steve'))
  end
end