require 'rails_helper'

RSpec.describe Expense, type: :model do
  describe 'Validations' do
    subject { expense }

    context 'factory spec' do
      let(:expense) { build(:expense) }

      it { is_expected.to be_valid }
    end

    context 'when no date provided' do
      let(:expense) { build(:expense, date: nil) }

      it { is_expected.not_to be_valid }
    end

    context 'when no value provided' do
      let(:expense) { build(:expense, value: nil) }

      it { is_expected.not_to be_valid }
    end

    context 'when value < 0' do
      let(:expense) { build(:expense, value: -1) }

      it { is_expected.not_to be_valid }
    end

    context 'when description not provided' do
      let(:expense) { build(:expense, description: nil) }

      it { is_expected.not_to be_valid }
    end

    context 'when description blank' do
      let(:expense) { build(:expense, description: '') }

      it { is_expected.not_to be_valid }
    end
  end

  describe '#value' do
    subject { expense.value }

    context 'when value has too high precision' do
      let(:expense) { create(:expense, value: 1.104) }

      it { is_expected.to eq(1.1) }
    end
  end
end
