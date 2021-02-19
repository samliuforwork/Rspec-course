RSpec.describe 'satisfy_matcher' do
  subject {'racecar'}

  it 'can be use satisfy_matcher practice palindrome' do
    expect(subject).to satisfy{|value| value == value.reverse }
  end

  it 'custom error message' do
    expect(subject).to satisfy('to be palindrome') do |value|
      value == value.reverse
    end
  end
end