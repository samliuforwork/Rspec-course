# Write a compound expectation that asserts the string firetruck starts with the substring "fire" and ends with the substring "truck".

# Write a compound expectation that asserts that the number 20 is even and that it responds to the times mthod.

# Write a compound expectation that asserts that the array [4, 8, 15, 16, 23, 42] includes the value 42 and starts with the values 4, 8, and 15.

RSpec.describe 'firetruck' do
  it 'compound_expectation' do
    expect(subject).to start_with('fire').and end_with('truck')
  end
end

RSpec.describe 20 do
  it 'test for number 20' do
    expect(subject).to be_even.and respond_to('times')
  end
end

RSpec.describe [4, 8, 15, 16, 23, 42] do
  it 'test for arrary' do
    expect(subject).to include(42).and start_with([4, 8, 15])
  end
end