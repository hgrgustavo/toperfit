module PlanAggregate
  class Description
    attr_reader :description

    REGEXP = %r/(\p{Latin} ?)+([!,.\p{Latin}])+/

    def initialize(string)
      unless REGEXP.match?(string)
        raise ArgumentError, "Invalid plan description format"
      end

      @description = string.freeze
    end

    def ==(other)
      other.is_a?(self.class) && other.name == @description
    end

    alias_method :eql?, :==

    def hash
      [ self.class, @description ].hash
    end

    def to_s
      @description
    end
  end
end
