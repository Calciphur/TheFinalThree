require 'spec_helper'

describe 'Token' do
  describe 'print' do
    it 'should print the token in the format "Token: @id"' do
      token = Token.new(1)
      token2 = Token.new(2)
      expect(token.print).to eq('Token: 1')
      expect(token2.print).to eq('Token: 2')
    end
  end

  describe 'id' do
    it 'should return id passed during initialization' do
      token = Token.new(1)
      expect(token.id).to eq(1)
    end
  end
end
