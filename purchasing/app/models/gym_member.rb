class GymMember < ApplicationRecord
  composed_of :name,
              class_name: "GymMemberAggregate::Name",
              converter: ->(string) {
                string.is_a?(GymMemberAggregate::Name) ? string : GymMemberAggregate::Name.new(string)
              }

  composed_of :birthdate,
              class_name: "GymMemberAggregate::Birthdate",
              converter: ->(date) {
                date.is_a?(GymMemberAggregate::Birthdate) ? date : GymMemberAggregate::Birthdate.new(date)
              }

  composed_of :gender,
              class_name: "GymMemberAggregate::Gender",
              converter: ->(gender) {
                gender.is_a?(GymMemberAggregate::Gender) ? gender : GymMemberAggregate::Gender.new(gender)
              }
end
