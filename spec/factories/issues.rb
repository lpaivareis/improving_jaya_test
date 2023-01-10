# frozen_string_literal: true

FactoryBot.define do
  factory :issue do
    title { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    status { :open }

    trait :closed do
      status { :closed }
    end
  end
end
