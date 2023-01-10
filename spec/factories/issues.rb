# frozen_string_literal: true

FactoryBot.define do
  factory :issue do
    title { Faker::Lorem.word }
    body { Faker::Lorem.paragraph }
    state { :open }
    url { Faker::Internet.url }

    trait :closed do
      state { :closed }
    end
  end
end
