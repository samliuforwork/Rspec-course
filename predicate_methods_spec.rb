RSpec.describe 'predict method and predict matchers' do
  it 'predict method' do
    result = 16/2
    expect(16.odd?).to be(false)
    expect([].empty?).to be(true)
    expect(result.even?).to be(true)
  end

  it 'predict matchers' do
    expect(16/2).to be_even
    expect(100).to be_even
    expect([]).to be_empty
    expect(0).to be_zero
  end

  describe 200 do
    it { is_expected.to be_even }
  end
end