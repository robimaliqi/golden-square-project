def checks_grammer(text)
  fail "Not a sentence." if text.empty?
  first_letter = text[0] == text[0].upcase
  last_character = [".", "!"].include? text[-1]
  if first_letter && last_character
    return true
  else
    return false  
 end
end