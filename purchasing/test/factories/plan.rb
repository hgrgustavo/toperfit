FactoryBot.define do
  factory :plan, class: "Plan" do
    name { "FIT" }
    description {
      <<~DESCRIPTION.strip
        Nosso plano mais econômico para você se
        exercitar quando e quanto quiser!
      DESCRIPTION
    }
    price_in_cents { 11990 }

    trait :invalid do
      name { "F" }
      description { "123456" }
      price_in_cents { 0 }
    end
  end
end
