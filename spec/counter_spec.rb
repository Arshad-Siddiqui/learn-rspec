require 'counter'

RSpec.describe Counter do
  it "Returns the count so far" do
    my_counter = Counter.new
    my_counter.add 6
    result = my_counter.report
    expect(result).to eq 'Counted to 6 so far.'
  end

  it 'Takes multiple counts' do
    my_counter = Counter.new
    my_counter.add 6
    my_counter.add 7
    my_counter.add 8
    result = my_counter.report
    expect(result).to eq 'Counted to 21 so far.'
  end

  it 'initialises with count instance at 0' do
    my_counter = Counter.new
    result = my_counter.report
    expect(result).to eq 'Counted to 0 so far.'
  end
end