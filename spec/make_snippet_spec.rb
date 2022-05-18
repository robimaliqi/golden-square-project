require 'make_snippet'

RSpec.describe "make_snippet method" do
  it "" do
    expect(make_snippet("hello there world have a great day")).to eq "hello there world have a..."
  end
end