require "report_length"

RSpec.describe "report_length method" do
  it "takes 'hello world' and returns 'This string was 11 characters long.'" do
    result = report_length('hello world')
    expect(result).to eq 'This string was 11 characters long.'
  end

  it "takes 'jim' and returns 'This string was 3 characters long.'" do
    result = report_length('jim')
    expect(result).to eq 'This string was 3 characters long.'
  end
end