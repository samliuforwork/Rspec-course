RSpec.describe 'equality_matchers' do
  let(:a) { 1 }
  let(:b) { 1.0 }

  describe 'eq matcher' do
    it 'test for value, but ignores types' do
      expect(a).to eq(1)
      expect(a).to eq(1.0)
      expect(a).to eq(b)
      expect(b).to eq(1)
    end
  end

  describe 'eql matcher' do
    it 'test for value and types' do
      expect(a).to eql(1)
      expect(a).not_to eql(1.0)
      expect(a).not_to eql(b)
      expect(b).not_to eql(1)
    end
  end

  describe 'equal, be matcher' do
    let(:a) { [1, 2, 3]}
    let(:b) { [1, 2, 3]}
    let(:c) { a }

    it 'care about object identity' do
      expect(a).to eq(b)
      expect(a).to eql(b)
      expect(b).to eq(c)
      
      expect(a).not_to equal(b)
      expect(a).not_to be(b)
    end
  end
end