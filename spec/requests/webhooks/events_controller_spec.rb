# frozen_string_literal: true

require "rails_helper"

RSpec.describe Webhooks::EventsController do
  describe "POST #create" do
    let(:payload) do
      {
        issue: {
          number: 1,
          title: "Issue title",
          body: "Issue body",
          state: "open",
          url: "www.example.com"
        }
      }
    end

    it "returns http success" do
      post webhooks_events_path(payload)
      expect(response).to have_http_status(:success)
    end

    it "creates a new issue" do
      expect { post webhooks_events_path(payload) }.to change(Issue, :count).by(1)
    end

    it "updates an existing issue" do
      issue = FactoryBot.create(:issue, id: 1)
      post webhooks_events_path(payload)
      issue.reload
      expect(issue.title).to eq("Issue title")
      expect(issue.description).to eq("Issue body")
      expect(issue.status).to eq("open")
      expect(issue.url).to eq("www.example.com")
    end
  end
end
