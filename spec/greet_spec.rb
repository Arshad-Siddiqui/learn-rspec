require "greet"

RSpec.describe "greet method" do
  it "prints Hello, Arshad!" do
    result = greet("Arshad")
    expect(result).to eq "Hello, Arshad!"
  end
end