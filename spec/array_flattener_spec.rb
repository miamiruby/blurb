require_relative '../lib/array_flattener'

RSpec.describe "Array" do

  subject(:a) { Array.new([1,2,[3,[4],5],[6],7]) }

  it "returns a flattened array" do
    expect(a.flatten).to eq([1, 2, 3, 4, 5, 6, 7])
  end

  it "should know if its been monkey patched?" do
    expect(a.monkey_patched?).to be true
  end

end