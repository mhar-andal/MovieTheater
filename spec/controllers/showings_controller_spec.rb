require 'rails_helper'

describe ShowingsController do
  describe 'GET #index' do
    it 'responds with status code 200' do
      get(:index)
      expect(response).to have_http_status 200
    end
  end

  describe 'GET #show' do
    it 'responds with status code 200' do
      get(:show)
      expect(response).to have_http_status 200
    end
  end

  describe 'GET #new' do
    it 'responds with status code 200' do
      get(:new)
      expect(response).to have_http_status 200
    end
  end
end
