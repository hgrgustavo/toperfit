module GymMemberAggregate
  class Name
    attr_reader :name

    REGEXP = %r/\A[A-Za-zÀ-ÖØ-öø-ÿ]{2,}(?:[ '-][A-Za-zÀ-ÖØ-öø-ÿ]{2,})+\z/

    def initialize(name)
      normalized_name = name.to_s.strip

      unless REGEXP.match?(normalized_name)
        raise ArgumentError, "Invalid name format: #{name.inspect}"
      end

      @name = normalized_name.upcase.freeze
    end

    def ==(other)
      other.is_a?(self.class) && other.name == @name
    end

    alias_method :eql?, :==

    def hash
      [ self.class, @name ].hash
    end

    def to_s
      @name
    end
  end
end
