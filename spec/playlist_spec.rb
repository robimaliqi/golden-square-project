require 'playlist'

RSpec.describe "playlist method" do
  it "returns a empty list" do
    playlist = Playlist.new
    expect(playlist.list).to eq []
  end
  it "returns a list of added songs to the playlist" do
    playlist = Playlist.new
    playlist.add("Here comes the sun - The Beatles")
    playlist.add("Could you be loved - Bob Marley")
    playlist.add("Comfertably numb - Pink Floyd")
    expect(playlist.list).to eq ["Here comes the sun - The Beatles", "Could you be loved - Bob Marley", "Comfertably numb - Pink Floyd"]
  end
  it "returns a new list of songs when there has been a song removed from the playlist" do
    playlist = Playlist.new
    playlist.add("Here comes the sun - The Beatles")
    playlist.add("Could you be loved - Bob Marley")
    playlist.remove("Comfertably numb - Pink Floyd")
    expect(playlist.list).to eq ["Here comes the sun - The Beatles", "Could you be loved - Bob Marley"]
  end
  it "fails if the song does not match a song on the list" do
    playlist = Playlist.new
    expect{ playlist.check("Comfertably numb - Pink Floyd") }.to raise_error "Song is not on the playlist"
  end
end