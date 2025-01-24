class MotorVehicle
  attr_accessor :type, :brand
  def initialize(type='Car', brand='Mercedes')
    @type = type
    @brand = brand
  end
end

RSpec.describe MotorVehicle do

  context 'with Car as type' do
    it "should have Car as the default type" do
      expect(subject.type).to(eq('Car'))
    end

    it "should have Mercedes as the default brand" do
      expect(subject.brand).to(eq('Mercedes'))
    end
  end
  context 'with Motorcycle as type' do
    subject(:bike) { MotorVehicle.new('Motorcycle', 'Yamaha') }
    it "should have MotorCycle as type" do
      expect(bike.type).to(eq('Motorcycle'))
    end
    it "should have Yamaha as a brand" do
      expect(bike.brand).to(eq('Yamaha'))
    end
  end

end
