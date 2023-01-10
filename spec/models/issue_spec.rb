# frozen_string_literal: true

require "rails_helper"

RSpec.describe Issue do
  describe "validations" do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:status) }
  end

  describe "enums" do
    describe "status" do
      it "has open status" do
        expect(FactoryBot.build(:issue, status: :open)).to be_open
      end

      it "has closed status" do
        expect(FactoryBot.build(:issue, status: :closed)).to be_closed
      end
    end
  end
end
