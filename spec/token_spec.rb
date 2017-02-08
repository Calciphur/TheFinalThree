require 'spec_helper'

describe 'Token' do
  
  describe 'print' do

    let(:token) {Token.new 1}
    let(:token2) {Token.new 2}

    it 'should print the token in the format "Token: @id"' do
      expect(token.print).to eq('Token: 1')
      expect(token2.print).to eq('Token: 2')
    end
  end

  describe 'id' do

    let(:token) {Token.new 1}

    it 'should return id passed during initialization' do
      expect(token.id).to eq(1)
    end
  end
end
