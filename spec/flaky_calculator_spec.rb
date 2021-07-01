require './lib/flaky_calculator'
require 'ffaker'

RSpec.describe 'Flaky_Calculator' do
  describe '#maybe_add' do
    it 'adds two positive numbers together' do
      expect(Flaky_Calculator.new.maybe_add(100, 72)).to eq(172)
    end

    it 'adds two numbers together that are the same' do
      expect(Flaky_Calculator.new.maybe_add(8, 8)).to eq(16)
    end

    it 'adds a number to zero' do
      expect(Flaky_Calculator.new.maybe_add(0, 1)).to eq(1)
    end

    it 'adds zero to zero' do
      expect(Flaky_Calculator.new.maybe_add(0, 0)).to eq(0)
    end

    it 'adds a positive and a negative number together' do
      expect(Flaky_Calculator.new.maybe_add(5, -8)).to eq(-3)
    end

    it 'adds two negative numbers together' do
      expect(Flaky_Calculator.new.maybe_add(-2, -4)).to eq(-6)
    end

  end
end
