require 'rails_helper'

RSpec.describe 'registrations actions', type: :request do
  let(:attributes) { { username: 'John', email: 'j@doe.com', password: '123', password_confirmation: '123' } }

  describe 'POST /registrations' do
    before { post '/registrations', params: attributes }

    it 'tests the username of the created user' do
      expect(json['user']['username']).to eq('John')
    end

    it 'tests the email of the created user' do
      expect(json['user']['email']).to eq('j@doe.com')
    end
  end
end
