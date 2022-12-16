require 'music_library'

describe MusicLibrary do
  context "initially" do
    it "returns an empty array" do
      library = MusicLibrary.new
      expect(library.all).to eq []
    end
  end

  context "MusicLibrary returns tracks added" do
    it "#all returns" do
      library = MusicLibrary.new
      song_1 = double :track
      song_2 = double :track
      library.add(song_1)
      library.add(song_2)
      expect(library.all).to eq [song_1, song_2]
    end
  end
  context "When keyword is present in tracks" do
    it "returns the track that matches the keyword" do
      library = MusicLibrary.new
      song_1 = double :track, matches?: true
      song_2 = double :track, matches?: true
      library.add(song_1)
      library.add(song_2)
      expect(library.search("sugar")).to eq [song_1, song_2]
    end
  end

  context "When keyword is not present in tracks" do
    it "returns empty array" do
      library = MusicLibrary.new
      song_1 = double :track, matches?: false
      song_2 = double :track, matches?: false
      library.add(song_1)
      library.add(song_2)
      expect(library.search("sugar")).to eq []
    end
  end

  context "When keyword is present in some tracks" do
    it "returns relevant tracks" do
      library = MusicLibrary.new
      song_1 = double :track, matches?: true
      song_2 = double :track, matches?: false
      song_3 = double :track, matches?: true
      library.add(song_1)
      library.add(song_2)
      library.add(song_3)
      expect(library.search("sugar")).to eq [song_1, song_3]
    end
  end
end

=begin

This is the syntax when creating a fake class:
  context "When keyword is present in tracks" do
    it "returns the track that matches the keyword" do
      library = MusicLibrary.new
      song_1 = FakeTrack_1.new
      song_2 = FakeTrack_2.new
      library.add(song_1)
      library.add(song_2)
      expect(library.search("sugar")).to eq [song_1, song_2]
    end
  end
end
 
class FakeTrack_1
  def matches?(keyword)
    return true
  end
end

class FakeTrack_2
  def matches?(keyword)
    return true
  end
end

=end