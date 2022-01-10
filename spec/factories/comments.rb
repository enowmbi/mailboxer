FactoryBot.define do
  factory :comment do
    body { "MyText" }
    user { nil }
    discussion { nil }
  end
end
