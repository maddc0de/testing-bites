require 'password_checker'

RSpec.describe PasswordChecker do
  it "returns true when password length is more than or equal to 8" do
    password = PasswordChecker.new
    expect(password.check("makersacademy")).to eq true
  end

  it "fails when password length is less than 8" do
   password = PasswordChecker.new
   expect { password.check("Makers") }.to raise_error  "Invalid password, must be 8+ characters."
  end
end