module PlanAggregate
  class PriceInCents
    attr_reader :price

    def initialize(integer)
      unless integer > 8900 && integer < 20000
        raise ArgumentError, "Invalid plan price value"
      end

      @price = integer.freeze
    end

    def ==(other)
      other.is_a?(self.class) && other.price == @price
    end

    alias_method :eql?, :==

    def hash
      [ self.class, @price ].hash
    end

    def to_s
      @price
    end
  end
end
