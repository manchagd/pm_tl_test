require 'rspec'
require_relative '../score_processor.rb'

describe ScoreProcessor do
  describe '#smallest_difference' do
    subject { described_class.new().smallest_difference }

    it { is_expected.to eq('Aston_Villa') }
  end
end
