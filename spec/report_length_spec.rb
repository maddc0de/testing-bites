require 'report_length'

RSpec.describe "report_length method" do
  it "returns a message with the length of the string given" do
    result = report_length("mississippi")
    expect(result).to eq "This string was 11 characters long."
  end

end