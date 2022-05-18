def make_snippet(string)
  return string.split(" ")[0, 5].join(" ") + "..."
end