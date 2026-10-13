FactoryBot.define do
  factory :gym_member, class: "GymMember" do
    name { "Gustavo Henrique Gomes Rodrigues" }
    birthdate { Date.new(2005, 2, 22) }
    gender { "male" }

    trait :invalid do
      name { "gus_t@v0_#4x9!_NULL_000_baby_octopus" }
      birthdate { Date.new(2026, 10, 1) }
      gender { "baby_octopus" }
    end
  end
end
