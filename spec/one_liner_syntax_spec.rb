RSpec.describe 'shorthand syntax' do
  subject(:test) {5}
  context 'with classic syntax' do
    it 'should equal 5' do
      expect(test).to(eq(5))
    end
  end

  context 'with one liner syntax' do
    it { is_expected.to(eq(5)) }
  end
end
