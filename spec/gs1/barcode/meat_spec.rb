require 'spec_helper'

RSpec.describe GS1::Barcode::Meat do
  describe 'example scans' do
    subject { described_class.from_scan(data) }

    context 'when nil' do
      let(:data) { nil }

      it 'nils all attributes' do
        expect(subject).not_to be_valid
        expect(subject.gtin).to be_nil
        expect(subject.production_date).to be_nil
        expect(subject.serial_number).to be_nil
      end
    end

    context "01900000087710111119081232020001082130037888" do
      let(:data) { "01900000087710111119081232020001082130037888" }

      it 'sets all attributes' do
        expect(subject.gtin).to eq(GS1::GTIN.new('90000008771011'))
        expect(subject.production_date).to eq(GS1::ProductionDate.new('190812'))
        expect(subject.serial_number).to eq(GS1::SerialNumber.new('30037888'))
        expect(subject.weight_pounds).to eq(GS1::WeightPounds.new('000108'))
      end
    end

    context "01908826910758561119081932020001252130042629" do
      let(:data) { "01908826910758561119081932020001252130042629" }

      it 'sets all attributes' do
        expect(subject.gtin).to eq(GS1::GTIN.new('90882691075856'))
        expect(subject.production_date).to eq(GS1::ProductionDate.new('190819'))
        expect(subject.serial_number).to eq(GS1::SerialNumber.new('30042629'))
        expect(subject.weight_pounds).to eq(GS1::WeightPounds.new('000125'))
      end
    end
  end
end
