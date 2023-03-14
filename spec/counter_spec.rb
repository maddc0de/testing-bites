require 'counter'

RSpec.describe Counter do
  it "initially report a count of zero" do
    counter = Counter.new
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end

  it "reports a count of added value with one addition" do
    counter = Counter.new
    counter.add(10)
    expect(counter.report).to eq "Counted to 10 so far."
  end

  it "reports a count of all added values" do
    counter = Counter.new
    counter.add(10)
    counter.add(5)
    counter.add(6)
    expect(counter.report).to eq "Counted to 21 so far."
  end
  
end