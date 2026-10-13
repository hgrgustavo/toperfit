module SubscriptionAggregate # refactor: add more period options, like yearly or weekly
  class Period
    attr_reader :start_time, :expire_time

    def initialize(start_time, expire_time)
      raise ArgumentError, "expire_time must be after start_time" unless start_time < expire_time

      @start_time = start_time
      @expire_time = expire_time
    end

    def self.monthly(start_time = Time.current)
      new(start_time, start_time + 1.month)
    end

    def self.yearly(start_time = Time.current)
      new(start_time, start_time + 1.year)
    end

    def self.weekly(start_time = Time.current)
      new(start_time, start_time + 1.week)
    end

    def expired?
      Time.now.between?(starts_at, expires_at)
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