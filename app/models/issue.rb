# frozen_string_literal: true

class Issue < ApplicationRecord
  validates :title, :status, :description, presence: true

  enum status: {
    open: "open",
    closed: "closed"
  }
end
