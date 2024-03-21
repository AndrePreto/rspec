class Card
  attr_accessor :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do

  # before method runs before each example in ths case
  # before(:example) can work as a substitute for "before do"
  # before do
  #   @card = Card.new('Ace', 'Spades')
  # end

  # new_card method can be used to create instances of the class Card however this instance can't be
  # changed
  # def new_card
  #   Card.new('Ace', 'Spades')
  # end

  let(:new_card) { Card.new('Ace', 'Spades') }

  #specify can work as a substitute for the keyword 'it'
  it 'has a rank and it can change' do
    expect(new_card.rank).to(eq('Ace'))
    new_card.rank = 'Queen'
    expect(new_card.rank).to(eq('Queen'))
  end

  it 'has a suit' do
    expect(new_card.suit).to(eq('Spades'))
  end

  it 'has a rank with custom error' do
    comparison = 'Spades'
    expect(new_card.suit).to(eq(comparison), "Hey, i expected #{comparison} and got #{new_card.suit}")
  end
end
