require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email).ignoring_case_sensitivity }

    context 'is a firefighter' do
      subject { FactoryBot.create(:firefighter) }
      it { is_expected.to validate_presence_of(:skills) }
    end

    context 'is a station manager' do
      subject { FactoryBot.create(:station_manager) }
      it { is_expected.not_to validate_presence_of(:skills) }
    end
  end
end
