require 'rails_helper'

RSpec.describe "Issues", type: :request do
  describe "GET /index" do
    before do
      FactoryBot.create_list(:issue, 10)
    end

    it "returns http success" do
      get issues_path
      expect(response).to have_http_status(:success)
    end

    it "returns all issues" do
      get issues_path
      expect(response.body).to eq(Issue.all.to_json)
    end

    it "returns 10 issues" do
      get issues_path
      expect(JSON.parse(response.body).size).to eq(10)
    end
  end
end
