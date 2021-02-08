RSpec.describe 'be_matchers' do
  it 'test for truthy' do
    expect([12]).to be_truthy
    expect([]).to be_truthy
    expect(true).to be_truthy
  end

  it 'test for falsy' do
    my_hash = { a: 55 }
    expect(false).to be_falsy
    expect(my_hash[:b]).to be_falsy
  end

  it 'test for nil' do
    expect(nil).to be_nil
    expect(@eee).to be_nil
  end
end