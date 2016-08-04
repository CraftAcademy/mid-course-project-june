require 'rails_helper'

RSpec.describe User, type: :model do

  it {is_expected.to respond_to :user_type}

  context 'DB table' do
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :encrypted_password }
    it { is_expected.to have_db_column :user_type }
  end

  context 'when user_type = orphanage' do
    let(:orphanage) { FactoryGirl.create(:user, user_type: 'orphanage')}

    it '#is_orphanage? == true' do
      expect(orphanage.is_orphanage?).to eq true
    end
  end

  context 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:user)).to be_valid
    end
  end

end
