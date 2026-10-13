module PlanAggregate
  class Name
    attr_reader :name

    REGEXP = %r/^[A-Z]{3,5}$/

    def initialize(name)
      unless REGEXP.match?(name)
        raise ArgumentError, "Invalid plan name format"
      end

      @name = name.freeze
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
