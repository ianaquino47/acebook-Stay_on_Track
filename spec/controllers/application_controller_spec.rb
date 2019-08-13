require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do

  describe "GET #current_user" do
    it "returns http success" do
      get :current_user
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #authenticate_user" do
    it "returns http success" do
      get :authenticate_user
      expect(response).to have_http_status(:success)
    end
  end

end
