require "grammar_stats"

RSpec.describe GrammarStats do
  it "checks the text and returns true if the text has a capital letter at the start and a punctation mark at the end" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("World!")).to eq true
  end
  it "checks the text and returns false if the text does not have a capital letter at the start and a punctation mark at the end" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("world")).to eq false
  end
  it "returns the percentage of good sentences that are checked" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("It's great")
    grammar_stats.check("it's good")
    grammar_stats.check("It's good.")
    grammar_stats.check("It's bad.")
    expect(grammar_stats.percentage_good).to eq "50.0%"
end 

  it "returns 0% when there are no good sentences in the sentences that have been checked" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("it's great")
    grammar_stats.check("it's good")
    grammar_stats.check("It's okay")
    grammar_stats.check("It's really bad")
    expect(grammar_stats.percentage_good).to eq "0.0%"
  end 
end 