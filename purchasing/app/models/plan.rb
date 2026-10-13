class Plan < ApplicationRecord
  composed_of :name,
              class_name: "PlanAggregate::Name",
              converter: ->(string) {
                string.is_a?(PlanAggregate::Name) ? string : PlanAggregate::Name.new(string)
              }
  composed_of :description,
              class_name: "PlanAggregate::Description",
              converter: ->(text) {
                text.is_a?(PlanAggregate::Description) ? text : PlanAggregate::Description.new(text)
              }
  composed_of :price,
              class_name: "PlanAggregate::Price",
              converter: ->(integer) {
                integer.is_a?(PlanAggregate::PriceInCents) ? integer : PlanAggregate::PriceInCents.new(integer)
              }
end
