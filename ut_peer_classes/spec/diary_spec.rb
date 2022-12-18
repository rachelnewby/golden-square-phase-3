require 'diary'

describe Diary do
  it "constructs" do
    diary = Diary.new("I don't like the cold")
    expect(diary).to be
  end

  it "#read returns a string of the contents" do
    diary = Diary.new("I don't like the cold")
    expect(diary.read). to eq "I don't like the cold"
  end
end