RSpec.describe 'start with and end with' do
  describe 'Ruby is cool' do
    it 'test for substring start with & end with' do
      expect(subject).to start_with('Ruby')
      expect(subject).not_to start_with('r')
      expect(subject).to start_with('Rub')
    end
  end

  describe [:a, :b, :c, :d] do
    it 'test for arrary start with & end with' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
    end
  end
end