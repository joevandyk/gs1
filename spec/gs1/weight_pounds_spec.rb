RSpec.describe GS1::WeightPounds do
  describe 'application identifier' do
    subject { described_class::AI }

    it { is_expected.to eq(GS1::AI::WEIGHT_POUNDS) }
  end

  it "parses weight" do
    expect(described_class.new("000125").to_f).to be == 1.25
    expect(described_class.new("000108").to_f).to be == 1.08
  end
end
