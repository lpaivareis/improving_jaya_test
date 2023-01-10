# frozen_string_literal: true

require "rails_helper"

RSpec.describe Issue do
  describe "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to validate_presence_of(:state) }
    it { is_expected.to validate_presence_of(:url) }
  end

  describe "enums" do
    describe "state" do
      it "has open state" do
        expect(build(:issue, state: :open)).to be_open
      end

      it "has closed status" do
        expect(build(:issue, state: :closed)).to be_closed
      end
    end
  end
end
