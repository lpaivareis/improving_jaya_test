# frozen_string_literal: true

module Webhooks
  class EventsController < ActionController::API
    def create
      return head :bad_request if params[:issue].blank?

      update_or_create_issue
      head :ok
    end

    private

    def update_or_create_issue
      @issue = Issue.find_by(id: event_params[:number])

      if @issue.present?
        @issue.update(event_params.except(:number))
      else
        @issue = Issue.create(format_issue_params)
      end
    end

    def event_params
      params.require(:issue).permit(:number, :state, :title, :body, :url)
    end

    def format_issue_params
      event_params.merge(id: event_params[:number]).except(:number)
    end
  end
end
