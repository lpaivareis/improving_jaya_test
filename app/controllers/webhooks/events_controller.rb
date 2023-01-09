# frozen_string_literal: true

module Webhooks
  class EventsController < ActionController::API
    def create
      head :ok
    end
  end
end
