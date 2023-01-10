# frozen_string_literal: true

module Webhooks
  class EventsController < ActionController::API
    def create
      event = JSON.parse(event_params, symbolize_names: true, object_class: OpenStruct)

      update_or_create_issue(event)

      head :ok
    end

    private

    def update_or_create_issue(event)
      @issue = Issue.find_by(id: event.number)

      if @issue.present?
        @issue.update!(
          status: event.state,
          title: event.title,
          description: event.body,
          url: event.url
        )
      else
        @issue = Issue.create(
          title: event.title,
          status: event.state,
          id: event.number,
          description: event.body,
          url: event.url
        )
      end
    end

    def event_params
      params[:issue].to_json
    end
  end
end
