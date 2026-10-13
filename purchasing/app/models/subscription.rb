class Subscription < ApplicationRecord
  belongs_to :gym_member
  belongs_to :plan
  composed_of :payment_status,
              class_name: "SubscriptionAggregate::PaymentStatus",
              converter: ->(string) {
                string.is_a?(SubscriptionAggregate::PaymentStatus) ? string : SubscriptionAggregate::PaymentStatus.new(string.to_s)
              }

  composed_of :period,
              class_name: "SubscriptionAggregate::Period",
              mapping: [
                %w[starts_at start_time],
                %w[expires_at expire_time]
              ]
end
