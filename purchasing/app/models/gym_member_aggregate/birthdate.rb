module GymMemberAggregate
  class Birthdate
    attr_reader :birthdate

    def initialize(date)
      year = date.year
      month = date.month
      day = date.day

      unless Date.valid_date?(year, month, day)
        raise ArgumentError, "invalid date"
      end

      unless (Date.today - date).to_i >= 14
        raise ArgumentError, "a member must be at least 14 years old"
      end

      @birthdate = date
    end

    def ==(other)
      other.is_a?(self.class) && other.birthdate === @birthdate
    end

    alias_method :eql?, :==

    def hash
      [ self.class, @birthdate ].hash
    end

    def to_s
      @birthdate.to_s
    end
  end
end
