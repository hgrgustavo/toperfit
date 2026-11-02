module GymMemberAggregate
  class Gender
    attr_reader :gender

    def initialize(gender)
      g = gender.to_s.downcase

      unless g == "female" || g == "male"
        raise ArgumentError, "gender must be either female or male"
      end

      @gender = gender
    end

    def ==(other)
      other.is_a?(self.class) && other.gender == @gender
    end

    alias_method :eql?, :==

    def hash
      [ self.class, @gender ].hash
    end

    def to_s
      @gender
    end
  end
end
