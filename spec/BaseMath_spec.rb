require 'spec_helper'

describe 'BaseMath' do
  describe 'to_quat' do
    let(:quat_zero) {BaseMath.to_quat 0}
    let(:quat_fiftyThree) {BaseMath.to_quat 53}
    let(:quat_oneFourSevenNine) {BaseMath.to_quat 1479}

    it "should return 0 when passed 0" do
      expect(quat_zero).to eq("0")
    end

    it "should return 311 when passed 53" do
      expect(quat_fiftyThree).to eq("311")
    end

    it "should return 113013 when passed 1479" do
      expect(quat_oneFourSevenNine).to eq("113013")
    end
  end
end
