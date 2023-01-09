# frozen_string_literal: true

require "rails_helper"

RSpec.describe Webhooks::EventsController do
  describe "POST #create" do
    it "returns http success" do
      post webhooks_events_path
      expect(response).to have_http_status(:success)
    end
  end
end
