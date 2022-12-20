require 'string_repeater'

describe StringRepeater do
  it "will get a string from terminal and puts it a given number of times" do
    io = double :io
    expect(io).to receive(:puts).with "Hello. I will repeat a string many times."
    expect(io).to receive(:puts).with "Please enter a string"
    expect(io).to receive(:gets).and_return "RACH"
    expect(io).to receive(:puts).with "Please enter a number of repeats"
    expect(io).to receive(:gets).and_return 10
    expect(io).to receive(:puts).with "Here is your result:"
    expect(io).to receive(:puts).with "RACHRACHRACHRACHRACHRACHRACHRACHRACHRACH"

    string_repeater = StringRepeater.new(io)
    string_repeater.run
  end
end