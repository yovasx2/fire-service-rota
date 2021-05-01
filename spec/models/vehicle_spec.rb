require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:year) }
    it { is_expected.to validate_presence_of(:brand) }
    it { is_expected.to validate_presence_of(:status) }
    it { is_expected.to validate_presence_of(:crew) }
  end
end
