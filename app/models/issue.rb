# frozen_string_literal: true

class Issue < ApplicationRecord
  validates :title, :status, :description, presence: true

  enum state: {
    open: "open",
    closed: "closed"
  }
end
