require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "Accepts 'horse' and prints 'Correct! come in.'" do
    result = check_codeword('horse')
    expect(result).to eq 'Correct! Come in.'
  end

  it "Takes 'donkey' and prints 'WRONG!'" do
    result = check_codeword('donkey')
    expect(result).to eq 'WRONG!'
  end

  it "Takes 'h*e' and prints 'Close, but nope.'" do
    result = check_codeword('hoe')
    expect(result).to eq "Close, but nope."
  end
end