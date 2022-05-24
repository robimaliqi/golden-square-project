# Playlist Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

> As a user
> So that I can keep track of my music listening
> I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class Playlist 
 def initialize #stores the tracks
 #hold an empty array here
 end

 def add(track) #task is a string, we can add tracks to the array here
 #returns nothing
 end

 def remove(track) #removes a track from the array
 end

 def check(track) #checks if a track is on the playlist(array)
 end

 def list
 #returns a list of listened to tracks in an array
 end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1
playlist = Playlist.new
playlist.list 
# => []

# 2
playlist = Playlist.new
playlist.add("Here comes the sun - The Beatles")
playlist.list
# => ["Here comes the sun - The Beatles"]

# 3
playlist = Playlist.new
playlist.add("Here comes the sun - The Beatles")
playlist.add("Could you be loved - Bob Marley")
playlist.add("Comfertably numb - Pink Floyd")
playlist.list
# => ["Here comes the sun - The Beatles", "Could you be loved - Bob Marley", "Comfertably numb - Pink Floyd"]

# 4
playlist = Playlist.new
playlist.add("Here comes the sun - The Beatles")
playlist.add("Could you be loved - Bob Marley")
playlist.remove("Comfertably numb - Pink Floyd")
playlist.list
# => ["Here comes the sun - The Beatles", "Could you be loved - Bob Marley"]

# 5
playlist = Playlist.new
playlist.add("Here comes the sun - The Beatles")
playlist.add("Could you be loved - Bob Marley")
playlist.check("Comfertably numb - Pink Floyd")
playlist.list
# => fails "Song is not on the playlist"

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._