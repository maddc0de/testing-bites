require 'greet'

RSpec.describe "add greet method" do
  it "prints hello with given name" do
    name = "Tanya"
    result = greet(name)
    expect(result).to eq "Hello, #{name}"
  end
end