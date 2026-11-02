class MembersController < ApplicationController
  def index
    @pagy, @members = pagy(:offset, GymMember.all)

    render json: {
      members: @members # refactor: send pagy metadata hash (depends on the client needs)
    }, status: :ok
  end

  def create
    member_params = params.expect(gym_member: [ :name, :birthdate, :gender ])
    @member = GymMember.new(member_params)

    if @member.save
      render json: {},
             status: :created,
             location: member_path(@member.id)
    end
  end

  def show
    @member = GymMember.find(params[:id])

    if @member.is_a?(GymMember)
      render json: {
        member: {
          id: @member.id,
          name: @member.name,
          birthdate: @member.birthdate,
          gender: @member.gender
        }
      }, status: :ok
    end
  end
end
