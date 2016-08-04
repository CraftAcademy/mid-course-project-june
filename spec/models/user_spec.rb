require 'rails_helper'

RSpec.describe User, type: :model do

  it {is_expected.to respond_to :user_type}

  context 'when user_type = orphanage' do
    let(:orphanage) { FactoryGirl.create(:user, user_type: 'orphanage')}

    it '#is_orphanage? == true' do
      expect(orphanage.is_orphanage?).to eq true
    end
  end
end
