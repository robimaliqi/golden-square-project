def calculate_reading_time(text)
  words = text.split(" ")
  (words.length / 200.to_f).ceil
end