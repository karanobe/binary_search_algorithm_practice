require_relative '../binary_search'

describe 'binary_search' do
  let(:test) { [1,2,3,4,5,6,7,8,9] }
  let(:test2) { [0,3,4,9,14,28,35,65,81] }

	it "picks a point in the middle" do
		expect(binary_search(5, test)).to eq 4
	end

  it "returns index of any searched integer" do
    expect(binary_search(8, test)).to eq 7
  end

  it "returns index of any searched integer" do
    expect(binary_search(3, test)).to eq 2
  end

  it "returns index of any searched integer" do
    expect(binary_search(65, test2)).to eq 7
  end

  it "returns index of any searched integer" do
    expect(binary_search(14, test2)).to eq 4
  end


end
