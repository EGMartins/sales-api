require 'rails_helper'

RSpec.describe 'Sales API', type: :request do
  let(:user) { create(:user) }
  let!(:sales) { create_list(:sale, 10) }

  let(:headers) { valid_headers }

    describe 'GET /sales' do
        before { get '/sales', params: {}, headers: headers }
    
        it 'returns sales' do
          # Note `json` is a custom helper to parse JSON responses
          expect(json).not_to be_empty
          expect(json.size).to eq(10)
        end
    
        it 'returns status code 200' do
          expect(response).to have_http_status(200)
        end
    end
end