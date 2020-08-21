require 'rails_helper'

RSpec.describe 'registrations actions', type: :request do
  let(:valid_attributes) do
    {
      username: 'John',
      email: 'john@doe.com',
      password: 'test123',
      password_confirmation: 'test123'
    }
  end

  describe 'POST valid registration' do
    before { post '/registrations', params: valid_attributes }

    it 'tests the username of the created user' do
      expect(json['user']['username']).to eq('John')
    end

    it 'tests the email of the created user' do
      expect(json['user']['email']).to eq('john@doe.com')
    end

    it 'tests the status of the created user' do
      expect(json['status']).to eq('created')
    end
  end
end
