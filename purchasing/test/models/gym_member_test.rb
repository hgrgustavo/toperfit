require "test_helper"

class GymMemberTest < ActiveSupport::TestCase
  test "should save a valid gym member" do
    assert FactoryBot.create(:gym_member), "valid gym member not saved"
  end

  test "should NOT build an invalid gym member" do
    assert_raises(ArgumentError) do
      FactoryBot.create(:gym_member, :invalid)
    end
  end

  test "should NOT save Krystina Koelpin Runte V" do
    assert_raises(ArgumentError) do
      FactoryBot.create(:gym_member, :krystina)
    end
  end
end
