def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    if ("a".."z").include?(char)
      then counter[char] += 1
    end
  end
  counter.to_a.sort_by { |k, v| v }[-1][0]
end

p get_most_common_letter("roof roof")