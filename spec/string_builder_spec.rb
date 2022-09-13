require 'string_builder'

RSpec.describe StringBuilder do
  it 'initialises with empty string' do
    my_string = StringBuilder.new
    result = my_string.output
    expect(result).to eq ''
  end

  it 'concatenates "hello world" to empty @str' do
    my_string = StringBuilder.new
    my_string.add 'hello world'
    result = my_string.output
    expect(result).to eq 'hello world'
  end

  it 'returns correct size' do
    my_string = StringBuilder.new
    my_string.add 'hello world'
    result = my_string.size
    expect(result).to eq 11
  end

  it 'concatenates two non-empty strings' do
    my_string = StringBuilder.new
    my_string.add 'hello '
    my_string.add 'world'
    result = my_string.output
    expect(result).to eq 'hello world'
  end
end