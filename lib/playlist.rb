class Playlist
  def initialize
    @tracks = []
  end

  def add(track)
    @tracks << track
  end

  def remove(track)
    @tracks.delete(track)
  end

  def check(track)
    fail "Song is not on the playlist" unless @tracks.include? track
  end

  def list
    return @tracks
  end
end