# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Events" do
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

    let(:payload_closed) do
      {
        issue: {
          state: "closed",
          number: 1
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
      issue = create(:issue, id: 1)
      post webhooks_events_path(payload_closed)
      issue.reload
      expect(issue.state).to eq("closed")
    end
  end
end
