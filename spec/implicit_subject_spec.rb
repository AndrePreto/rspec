class Vehicle
  attr_accessor :type
  def initialize(type='Car')
    @type = type
  end
end

RSpec.describe Vehicle do
  #There is always a variable called subject that refers to an instance of class in the describe 
  #method. In this case an instance of the class Vehicle:
  #let(:subject) { Vehicle.new }
  
  it "should have Car as the default type" do
    expect(subject.type).to(eq('Car'))
  end

  it "can change its type" do
    subject.type = 'Bicycle'
    expect(subject.type).to(eq('Bicycle'))
  end

end
