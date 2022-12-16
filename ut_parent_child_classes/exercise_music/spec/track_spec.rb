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

    it "#matches? returns true to instance title a word passed as perameter" do
      song = Track.new("Cane Sugar", "Glass Animals")
      expect(song.matches?("sugar")).to eq true
    end

    it "#matches? returns true to instance article a word passed as perameter" do
      song = Track.new("Overload", "Sugarbabes")
      expect(song.matches?("sugar")).to eq true
    end

    it "#matches? returns false to instance article a word passed as perameter" do
      song = Track.new("Woman", "Little Simz")
      expect(song.matches?("sugar")).to eq false
    end
  end   
end