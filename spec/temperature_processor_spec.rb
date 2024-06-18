require 'rspec'
require_relative '../temperature_processor.rb'

describe TemperatureProcessor do
  describe '#smallest_spread' do
    subject { described_class.new().smallest_spread }

    it { is_expected.to eq(14) }
  end
end
