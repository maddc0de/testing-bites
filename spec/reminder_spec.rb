require 'reminder'

# we use class name here rather than a string compared to method testing
RSpec.describe Reminder do
  it "reminds the user to do a task" do
    reminder = Reminder.new("Kay")
    reminder.remind_me_to("Walk the dog")
    result = reminder.remind()
    expect(result).to eq "Walk the dog, Kay!"
  end

  # typically have a number of thes examples
end