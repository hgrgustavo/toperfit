class GymMemberSerializer
  include ActiveModel::Serializers::JSON

  def array_of_hashes(records)
    records.map(&:attributes)
  end
end
