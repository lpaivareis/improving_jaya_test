# frozen_string_literal: true
class IssuesController < ApplicationController
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  before_action :http_basic_authenticate, only: :index

  def index
    @issues = Issue.all

    if @issues.empty?
      render json: { message: "No issues found" }, status: :not_found
    else
      render json: @issues, status: :ok
    end
  end

  private

  def http_basic_authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "xxx" && password == "xxx"
    end
  end
end
