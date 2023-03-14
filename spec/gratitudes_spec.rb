require 'gratitudes'

RSpec.describe Gratitudes do
  it "initially returns message with no gratitude" do
    gratitude = Gratitudes.new
    expect(gratitude.format).to eq "Be grateful for: "
  end

  it "returns a message with one added gratitude" do
    gratitude = Gratitudes.new
    gratitude.add("getting out of bed")
    expect(gratitude.format).to eq "Be grateful for: getting out of bed"
  end

  it "returns a message with many added gratitudes" do
    gratitude = Gratitudes.new
    gratitude.add("getting out of bed")
    gratitude.add("having a place I can call a home")
    gratitude.add("food")
    expect(gratitude.format).to eq "Be grateful for: getting out of bed, having a place I can call a home, food"
  end

end