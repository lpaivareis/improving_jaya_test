# frozen_string_literal: true

module Webhooks
  class EventsController < ActionController::API
    def create
      return head :bad_request if params[:issue].blank?

      update_or_create_issue(event_params)

      head :ok
    end

    private

    def update_or_create_issue(event)
      @issue = Issue.find_by(id: event.number)

      if @issue.present?
        @issue.update(event_params.reject { |k,| k.number })
      else
        @issue = Issue.create(event_params)
      end
    end

    def event_params
      params.require(:issue).permit(:number, :state, :title, :body, :url)
    end
  end
end
