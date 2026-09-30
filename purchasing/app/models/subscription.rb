class Subscription < ApplicationRecord
  belongs_to :gym_member
  belongs_to :plan
end
