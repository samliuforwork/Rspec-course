RSpec.describe 'not_to method' do
  it 'checks for the inverse of a matcher' do
    expect(3).not_to eq(5)
    expect([:a, :b, :c]).not_to include(:d)
  end
end