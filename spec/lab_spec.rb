require 'spec_helper'

describe 'Lab' do

  describe 'create_data' do
    let(:improper_lab) {Lab.new}
    let(:proper_lab) {Lab.new}

    it "should throw an ArgumentError when passed a string" do
      expect{improper_lab.create_data 'non-integer-string'}.to raise_error(ArgumentError)
    end

    it "should throw an ArgumentError when passes a non-integer number" do
      expect{improper_lab.create_data 5.8}.to raise_error(ArgumentError)
    end

    it "should NOT throw any errors when passed an integer value" do
      expect{proper_lab.create_data 5}.to_not raise_error
    end

  end
end
