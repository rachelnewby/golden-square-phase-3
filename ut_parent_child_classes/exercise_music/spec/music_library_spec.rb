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
end
