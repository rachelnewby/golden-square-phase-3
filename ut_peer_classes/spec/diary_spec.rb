require 'diary'

describe Diary do
  it "constructs" do
    diary = Diary.new("I don't like the cold")
    expect(diary).to be
  end
end