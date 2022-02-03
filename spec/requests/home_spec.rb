require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "GET /delete" do
    it "returns http success" do
      get "/home/delete"
      expect(response).to have_http_status(:success)
    end
  end

end
