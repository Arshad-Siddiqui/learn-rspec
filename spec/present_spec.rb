require 'present'

RSpec.describe Present do
  context "When empty" do
    it "fail when unwrap is called" do
      my_present = Present.new
      expect { my_present.unwrap }.to raise_error 'No contents have been wrapped.'
    end
  end

  context "When there already is contents" do
    it 'fails when wrap is called again' do
      my_present = Present.new
      my_present.wrap 'Bicycle'
      expect { my_present.wrap 'ps5'}.to raise_error 'A contents has already been wrapped.'
    end
  end
end