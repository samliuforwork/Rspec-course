RSpec.describe 'Not to eq method' do
  it 'number is not equal' do
    expect(4).not_to eq(5)
  end

  it 'string content is not equal' do
    expect('hello').not_to eq('Hello')
  end
end