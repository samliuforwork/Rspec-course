RSpec.describe 'comparasion matchers' do
  it 'allow for comparasion in Ruby operator' do
    expect(500).to be > 5
    expect(2).to be <= 3
  end

  describe 100 do
    it { is_expected.to be < 300 }
  end
end