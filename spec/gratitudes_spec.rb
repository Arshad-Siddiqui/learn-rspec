require 'gratitudes'

describe Gratitudes do
  it 'Initialises as an empty array' do
    my_gratitude = Gratitudes.new
    result = my_gratitude.format
    expect(result).to eq 'Be grateful for: '
  end

  it 'Adds a gratitude to the list' do
    my_gratitude = Gratitudes.new
    my_gratitude.add 'love'
    result = my_gratitude.format
    expect(result).to eq 'Be grateful for: love'
  end

  it 'Adds multiple gratitudes to the list' do
    my_gratitude = Gratitudes.new
    my_gratitude.add 'love'
    my_gratitude.add 'friendship'
    my_gratitude.add 'ruby'
    result = my_gratitude.format
    expect(result).to eq 'Be grateful for: love, friendship, ruby'
  end
end