require "test_helper"

class MembersControllerTest < ActionDispatch::IntegrationTest
  test "should create a new member" do
    member = FactoryBot.build(:gym_member)

    post "/members", params: {
      gym_member: {
        name: member.name,
        birthdate: member.birthdate,
        gender: member.gender
      }
    }

    assert_response :created
    assert response.has_header? "Location"
  end

  test "should return requested member" do
    member = FactoryBot.create(:gym_member)

    get "/members/#{member.id}"

    assert_response :ok

    json_response = JSON.parse(response.body)["member"]
    expected_payload = member.as_json(only: %w[id name birthdate gender])

    assert_equal expected_payload, json_response
  end

  test "should return members within each page" do
    FactoryBot.create_list(:gym_member, 20)

    get members_path, params: { page: 1 }
    assert_response :ok

    first_page_members = JSON.parse(response.body)["members"]
    assert_equal 10, first_page_members.size

    get members_path, params: { page: 2 }
    assert_response :ok

    second_page_members = JSON.parse(response.body)["members"]
    assert_equal 10, second_page_members.size

    first_page_ids = first_page_members.map { |m| m["id"] }
    second_page_ids = second_page_members.map { |m| m["id"] }

    assert_empty first_page_ids & second_page_ids
  end
end
