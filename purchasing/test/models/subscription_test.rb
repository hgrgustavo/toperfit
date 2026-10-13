require "test_helper"

class SubscriptionTest < ActiveSupport::TestCase
  test "should save a valid subscription" do
    assert FactoryBot.create(:subscription), "valid gym subscription not saved"
  end

  test "should NOT build an invalid subscription" do
    assert_raises(ArgumentError) do
      FactoryBot.create(:subscription, :invalid)
    end
  end
end
