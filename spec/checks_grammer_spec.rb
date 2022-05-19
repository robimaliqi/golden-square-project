require "checks_grammer"

RSpec.describe "checks_grammer method" do
  context "given an empty string" do
    it "fails" do
      expect { checks_grammer("") }.to raise_error "Not a sentence."
    end
  end
  context "given a sentence with a capital letter and exclamation mark" do
    it "returns true" do
      result = checks_grammer("One day I went home.")
      expect(result).to eq true
    end
  end
  context "given a sentence with a word that has all capital letters and exclamation mark" do
    it "returns true" do
      result = checks_grammer("ONE day I went home!")
      expect(result).to eq true
    end
  end
  context "given a sentence with a word that has all capital letters and exclamation mark" do
    it "returns false" do
      result = checks_grammer("one day I went home")
      expect(result).to eq false
    end
  end
end