RSpec.describe 'include_matcher' do
  describe 'just describe for string' do
    it 'check for substring element include' do
      expect(subject).to include('just')
      expect(subject).to include('describe')
    end
  end

  describe ({a: 5, b: 200}) do
    it 'check for arrary element include' do
      expect(subject).to include(:a)
      expect(subject).to include(:b)
      expect(subject).to include(a: 5)
      expect(subject).to include(b: 200)
    end
  end
end