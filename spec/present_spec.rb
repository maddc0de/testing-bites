require 'present'

RSpec.describe Present do
  it "wraps and unwrap a value" do
    present = Present.new
    present.wrap("mug")
    expect(present.unwrap). to eq "mug"
  end

  it "fails when we unwrap without wrapping a present first" do
    present = Present.new
    expect { present.unwrap }.to raise_error "No contents have been wrapped."
  end

  it "fails when a present has already been wrapped" do
    present = Present.new
    present.wrap("shoes")
    expect { present.wrap("books") }.to raise_error "A contents has already been wrapped."
  end

end