FactoryBot.define do
  factory :schedule do
    schedulable { nil }
    start_at { "2021-05-01 22:40:16" }
    end_at { "2021-05-01 22:40:16" }
    ready { false }
  end
end
