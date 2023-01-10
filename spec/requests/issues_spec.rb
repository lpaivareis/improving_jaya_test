# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Issues" do
  describe "GET /index" do
    before do
      create_list(:issue, 10)
    end

    let(:headers) do
      {
        Authorization: ActionController::HttpAuthentication::Basic.encode_credentials("xxx", "xxx")
      }
    end

    it "returns http success" do
      get issues_path, headers: headers
      expect(response).to have_http_status(:success)
    end

    it "returns all issues" do
      get issues_path, headers: headers
      expect(response.body).to eq(Issue.all.to_json)
    end

    it "returns 10 issues" do
      get issues_path, headers: headers
      expect(JSON.parse(response.body).size).to eq(10)
    end

    it "returns a 404 if no issues are found" do
      Issue.destroy_all
      get issues_path, headers: headers
      expect(response).to have_http_status(:not_found)
    end

    it "returns a message if no issues are found" do
      Issue.destroy_all
      get issues_path, headers: headers
      expect(JSON.parse(response.body)["message"]).to eq("No issues found")
    end

    it "returns a 401 if no credentials are provided" do
      get issues_path
      expect(response).to have_http_status(:unauthorized)
    end
  end
end
