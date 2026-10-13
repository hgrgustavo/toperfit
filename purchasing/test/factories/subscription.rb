FactoryBot.define do
  factory :subscription, class: "Subscription" do
    gym_member
    plan
    payment_status { "active" }
    starts_at { Time.new(2026, 10, 9, 9) }
    expires_at { Time.new(2026, 11, 9, 9) }

    trait :invalid do
      association :gym_member, :invalid
      association :plan, :invalid
      payment_status { "aswafaskdf" }
      starts_at { Time.new(2010, 1, 1, 0) }
      expires_at { Time.new(2009, 1, 1, 0) }
    end
  end
end
