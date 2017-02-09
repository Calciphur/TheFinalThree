require 'spec_helper'

describe 'Lab' do

  describe 'create_data' do
    let(:improper_lab) {Lab.new}
    let(:proper_lab) {Lab.new}
    let(:file) {"./files/data.csv"}

    it "should throw an ArgumentError when passed a string" do
      expect{improper_lab.create_data 'non-integer-string'}.to raise_error(ArgumentError)
    end

    it "should throw an ArgumentError when passes a non-integer number" do
      expect{improper_lab.create_data 5.8}.to raise_error(ArgumentError)
    end

    it "should NOT throw any errors when passed an integer value" do
      expect{proper_lab.create_data 5}.to_not raise_error
    end

    it "should clear the file each time create_data is called" do
      proper_lab.create_data 52
      proper_lab.create_data 8
      line_count = `wc -l "#{file}"`.strip.split(' ')[0].to_i
      expect(line_count).to eq(10)
    end

    it "should clear the file each time create_data is called" do
      proper_lab.create_data 91
      proper_lab.create_data 4
      line_count = `wc -l "#{file}"`.strip.split(' ')[0].to_i
      expect(line_count).to eq(6)
    end

  end
end
