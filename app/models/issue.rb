# frozen_string_literal: true

class Issue < ApplicationRecord
  validates :title, :state, :body, :url, presence: true

  enum state: {
    open: "open",
    closed: "closed"
  }
end
