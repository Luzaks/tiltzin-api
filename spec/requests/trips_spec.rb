require 'rails_helper'

RSpec.describe 'Trips Requests' do
  let!(:user) { create(:user) }
  let!(:destiny) { create(:destiny) }
  let(:user_id) { user.id }
  let(:destiny_id) { destiny.id }
  let(:destiny_name) { destiny.city }

  describe 'Trip POST request' do
    let(:valid_attributes) do
      {
        destiny_id: destiny_id,
        user_id: user_id,
        date: '20-09-20',
        destiny_name: destiny_name
      }
    end

    before { post '/trips', params: valid_attributes }

    it 'returns the same date the provided one' do
      expect(json['status']).to eq(200)
    end
  end
end
