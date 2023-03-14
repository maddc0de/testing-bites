require 'string_builder'

RSpec.describe StringBuilder do
  context "initially" do
    it "initially returns an empty string as output" do
      string = StringBuilder.new
      expect(string.output).to eq ""
    end

    it "initially returns a string's size of zero" do
      string = StringBuilder.new
      expect(string.size).to eq 0
    end
  end

  context "given one addition of a string" do
    it "outputs the string" do
      string = StringBuilder.new
      string.add("Hi")
      expect(string.output).to eq "Hi"
    end

    it "returns the string's size" do
      string = StringBuilder.new
      string.add("Hi")
      expect(string.size).to eq 2
    end
  end

  context "given multiple additions of a string" do
    it "outputs the string" do
      string = StringBuilder.new
      string.add("Hi")
      string.add("lovely")
      string.add("human")
      expect(string.output).to eq "Hilovelyhuman"
    end

    it "returns the string's size" do
      string = StringBuilder.new
      string.add("Hi")
      string.add("lovely")
      string.add("human")
      expect(string.size).to eq 13
    end
  end
end