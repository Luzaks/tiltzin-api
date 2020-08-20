require 'rails_helper'
FactoryBot.find_definitions

RSpec.describe 'Destinies Requests', type: :request do
  let!(:destiny) { create(:destiny) }
  let(:attributes) do
    {
      url: 'Number',
      city: 'One',
      country: 'Heart',
      family: 'Brandy',
      description: 'Hey',
      state: 'Planet',
      famdescription: 'Miaw'
    }
  end

  describe 'Get Destinies' do
    before { get '/index' }

    it 'returns the size of the destiny' do
      expect(json.size).to eq(1)
    end

    it 'returns the city of the destiny' do
      expect(json[0]['city']).to eq('Number One')
    end

    it 'returns the country of the destiny' do
      expect(json[0]['country']).to eq('In the planet')
    end

    it 'returns the family of the destiny' do
      expect(json[0]['family']).to eq('Random')
    end

    it 'returns the description of the destiny' do
      expect(json[0]['description']).to eq('Some description')
    end

    it 'returns the state of the destiny' do
      expect(json[0]['state']).to eq('In the country')
    end

    it 'returns the famdescription of the destiny' do
      expect(json[0]['famdescription']).to eq('Some fam description')
    end
  end

  describe 'Get Destinies' do
    before { post '/destinies', params: attributes }

    it 'should return successful 201 status when creating destiny' do
      expect(json['status']).to eq(201)
    end
  end
end
