require 'rails_helper'

RSpec.describe 'Sessions Requests' do
  let!(:user) { create(:user) }
  let(:user_id) { user.id }
  let(:user_email) { user.email }
  let(:user_password) { user.password }

  describe 'New Session POST request' do
    let(:valid_attributes) do
      {
        email: user_email,
        password: user_password
      }
    end
    before { post '/sessions', params: valid_attributes }

    it 'return the status of a created session' do
      expect(json['status']).to eq('created')
    end

    it 'return the logged_in status of a created session' do
      expect(json['logged_in']).to eq(true)
    end

    it 'return the user email data of a created session' do
      expect(json['user']['email']).to eq('john@he.com')
    end

    it 'return the user size of a created session' do
      expect(json['user']['username']).to eq('John')
    end
  end

  describe 'Logout Session DELETE request' do
    before { delete '/logout' }

    it 'return the status of a deleted session' do
      expect(json['status']).to eq(200)
    end

    it 'return the logged_out status of a deleted session' do
      expect(json['logged_out']).to eq(true)
    end
  end
end
