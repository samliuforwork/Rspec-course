RSpec.describe 'all matchers' do
  it 'compare all the number' do
    expect([1, 2, 3]).to all(be < 5)
    expect([]).to all(be_empty)
    expect([0,0,0,0,0]).to all(be_zero)
  end

  describe [3, 5, 7] do
    it { is_expected.to all(be_odd) }
  end
end