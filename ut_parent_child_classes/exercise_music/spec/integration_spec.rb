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

    it "#search returns the track that matches the keyword" do
      library = MusicLibrary.new
      song_1 = Track.new("Cane Sugar", "Glass Animals")
      song_2 = Track.new("Woman", "Little Simz")
      song_3 = Track.new("Overload", "Sugarbabes")
      library.add(song_1)
      library.add(song_2)
      library.add(song_3)
      expect(library.search("sugar")).to eq [song_1, song_3]
    end
  end

  context "When keyword is not present in tracks" do
     it "#search returns empty array" do
      library = MusicLibrary.new
      song_1 = Track.new("Cane Sugar", "Glass Animals")
      song_2 = Track.new("Woman", "Little Simz")
      song_3 = Track.new("Overload", "Sugarbabes")
      library.add(song_1)
      library.add(song_2)
      library.add(song_3)
      expect(library.search("boys")).to eq []
    end
  end
end