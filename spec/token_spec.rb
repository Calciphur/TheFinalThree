require 'spec_helper'
require 'rspec'

describe 'Token' do
  describe 'print' do
    it 'should print the token in the format "Token: @id"' do
      token = Token.new
      token2 = Token.new
      expect(token.print).to eq('Token: 1')
      expect(token2.print).to eq('Token: 2')
    end
  end
end