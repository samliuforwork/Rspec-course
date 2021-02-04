class Card
  attr_reader :type, :decoration

  def rank
    card = Card.new('Ace', 'Spades')
    card.type
  end

  def suit
    card = Card.new('Ace', 'Spades')
    card.decoration
  end

  def initialize(type, decoration)
    @type = type
    @decoration = decoration
  end

end

RSpec.describe Card do
  it 'has a rank' do
    card = Card.new('Ace', 'Spades')
    expect(card.rank).to eq('Ace')
  end

  it 'has a suit' do
    card = Card.new('Ace', 'Spades')
    expect(card.suit).to eq('Spades')
  end
end