require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #bokes" do
    it "returns http success" do
      get :bokes
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #themes" do
    it "returns http success" do
      get :themes
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #favorites" do
    it "returns http success" do
      get :favorites
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #ratings" do
    it "returns http success" do
      get :ratings
      expect(response).to have_http_status(:success)
    end
  end

end
