require 'rails_helper'

RSpec.describe 'Sales API', type: :request do
    let!(:sales) { create_list(:sale, 10) }

    describe 'GET /sales' do
        # make HTTP get request before each example
        before { get '/sales' }
    
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