require 'rails_helper'

RSpec.describe 'registrations actions', type: :request do
  let(:valid_attributes) { { user: { username: 'John', email: 'john@doe.com', password: 'test123', password_confirmation: 'test123' } } }

  describe 'POST /registrations' do
    before { post '/registrations', params: valid_attributes }

    it 'tests the username of the created user' do
      expect(json['user']['username']).to eq('John')
    end

    it 'tests the email of the created user' do
      expect(json['user']['email']).to eq('john@doe.com')
    end
  end
end
