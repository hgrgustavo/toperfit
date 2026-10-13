module SubscriptionAggregate
  class PaymentStatus
    attr_reader :payment_status

    REGEXP = %r{^(active|inactive)$}

    def initialize(status)
      unless REGEXP.match?(status)
        raise ArgumentError, "Invalid status"
      end

      @payment_status = status.freeze
    end

    def ==(other)
      other.is_a?(self.class) && other.payment_status == @payment_status
    end

    alias_method :eql?, :==

    def hash
      [ self.class, @payment_status ].hash
    end

    def to_s
      @payment_status
    end
  end
end
