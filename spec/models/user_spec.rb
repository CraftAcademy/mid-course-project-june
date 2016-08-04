require 'rails_helper'

RSpec.describe User, type: :model do

  it {is_expected.to respond_to :type}

  context 'when type = orphanage' do
    let(:orphanage) { FactoryGirl.create(:user, type: 'orphanage')}

    it '#is_orphanage? == true' do
      expect(orphanage.is_orphanage?).to eq true
    end
  end
end
