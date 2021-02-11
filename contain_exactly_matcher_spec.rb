RSpec.describe 'contain_exactly_matcher' do
  subject{ [1 ,2 ,3] }
  describe 'long form syntax' do
    it 'should contain exactly matcher' do
      expect(subject).to contain_exactly(1, 2, 3)
      expect(subject).to contain_exactly(1, 3, 2)
      expect(subject).to contain_exactly(3, 2, 1)
    end
  it { is_expected.to contain_exactly(1,2,3)}
end


end