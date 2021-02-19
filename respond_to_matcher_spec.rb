class Hotmilk
  def drink
    'very nice'
  end

  def discard
    'so bad~'
  end

  def buy(number)
    "Yes, give me #{number} hotmilk!"
  end
end

RSpec.describe Hotmilk do
  it 'object respond_to method & respond_to method with arguments' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:discard)
    # 這邊的數字1，代表引數的個數
    expect(subject).to respond_to(:buy).with(1).arguments
  end
end