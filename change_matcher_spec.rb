RSpec.describe 'change_matcher' do
  subject { [1, 2, 3, 4] }

  it 'check that a method change object state' do
    expect { subject.push(5) }.to change { subject.length }.by(1)
  end

  it 'accepts negative arguments' do
    expect { subject.pop }.to change { subject.length }.by(-1)
  end
end