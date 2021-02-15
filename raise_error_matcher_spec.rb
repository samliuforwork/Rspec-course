RSpec.describe 'raise_error' do
  def some_method
    a
  end

  it 'check error being raising' do
    expect { some_method }.to raise_error(NameError) 
  end
end