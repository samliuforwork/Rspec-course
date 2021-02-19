RSpec.describe 25 do
  it 'can uses for multiply matchers' do
    expect(subject).to be_odd.and be < 30
  end
end

RSpec.describe 'discard' do
  it 'test for string' do
    expect(subject).to start_with('dis').and end_with('ard')
  end
end

RSpec.describe [:USA, :UK, :Japan] do
  it 'test for multiple possibilities' do
    expect(subject.sample).to be(:USA).or be(:UK).or be(:Japan)
  end
end