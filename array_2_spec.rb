RSpec.describe Array do
  subject(:sally){["abc", "ddd"]}

  it "arrary can remove element" do
    puts sally
    expect(sally.length).to eq(2)
    sally.pop()
    expect(sally.length).to eq(1)
  end

  it "sally's length still be 2 in other example" do
    expect(sally.length).to eq(2)
  end
end