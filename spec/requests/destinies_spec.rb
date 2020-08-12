require 'rails_helper'

RSpec.describe 'destinies post actions', type: :request do
  let!(:destiny) { create(:destiny) }

  describe 'Get destinies request' do
    before { get '/index' }

    it 'tests the size of the returned destinies' do
      expect(json.size).to eq(1)
    end
    it 'tests the state of the returned destinies' do
      expect(json).not_to be_falsy
    end
  end
end
