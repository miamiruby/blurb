require_relative '../lib/array_flattener'

RSpec.describe "Array" do

  it "returns a flattened array" do
    expect(Array.new([1,2,[3,[4],5],[6],7]).flatten).to eq([1, 2, 3, 4, 5, 6, 7])
  end

end