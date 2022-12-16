require 'music_library'
require 'track'

describe "integration" do
  context "MusicLibrary returns tracks added" do
    it "#all returns" do
      library = MusicLibrary.new
      song_1 = Track.new("Cane Sugar", "Glass Animals")
      song_2 = Track.new("Woman", "Little Simz")
      library.add(song_1)
      library.add(song_2)
      expect(library.all).to eq [song_1, song_2]
    end
  end

  context "When keyword is present in tracks" do
    it "#search returns the track that matches the keyword" do
      library = MusicLibrary.new
      song_1 = Track.new("Cane Sugar", "Glass Animals")
      song_2 = Track.new("Woman", "Little Simz")
      library.add(song_1)
      library.add(song_2)
      expect(library.search("sugar")).to eq [song_1]
    end
  end
end