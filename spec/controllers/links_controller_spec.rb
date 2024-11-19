require 'rails_helper'

RSpec.describe LinksController, type: :controller do
  describe 'POST #create' do
    it 'can shorten a link provided by a user' do
      url = "https://www.favouritewebsite.com/articles/how-to-cook"
      post :create, params: { link: { original_url: url } }
      expect(response).to have_http_status(:created)
    end
  end
end
