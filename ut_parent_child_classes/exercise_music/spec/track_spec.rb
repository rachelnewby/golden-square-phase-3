require 'track'

describe Track do
  context "when two strings passed to initialize" do
    it "constructs" do
      song = Track.new("Cane Sugar", "Glass Animals")
      expect(song.instance_variable_get(:@title)).to eq "Cane Sugar"
    end

    it "constructs" do
      song = Track.new("Cane Sugar", "Glass Animals")
      expect(song.instance_variable_get(:@artist)).to eq "Glass Animals"
    end
  end   
end