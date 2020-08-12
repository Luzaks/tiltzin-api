require 'rails_helper'

RSpec.describe 'Illness API' do
  let!(:user) { create(:user) }
  let!(:destiny) { create(:destiny) }
  let(:user_id) { user.id }
  let(:destiny_id) { destiny.id }

  describe 'Trip POST request' do
    let(:valid_attributes) { { destiny_id: destiny_id, user_id: user_id, date: '20-09-20' } }
    before { post '/trips', params: valid_attributes }
    it 'returns the same date the provided one' do
      expect(json['date']).to eq('20-09-20')
    end
    it 'tests the existance of the date' do
      expect(json['date']).not_to be_falsy
    end
    it 'tests the size of the json' do
      expect(json.size).to eq(6)
    end
  end

  describe 'Trip GET request' do
    before { get '/list' }
    it 'return the trips state' do
      expect(json).to be_empty
    end
    it 'return the trips size' do
      expect(json.size).to eq(0)
    end
    it 'return the trips existence' do
      expect(json).not_to be_falsy
    end
  end
end
