require "test_helper"

class PlanTest < ActiveSupport::TestCase
  test "should save a valid plan" do
    assert FactoryBot.create(:plan), "valid gym plan not saved"
  end

  test "should NOT build an invalid plan" do
    assert_raises(ArgumentError) do
      FactoryBot.create(:plan, :invalid)
    end
  end
end
