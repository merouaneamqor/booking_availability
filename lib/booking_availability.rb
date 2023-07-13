# frozen_string_literal: true

require_relative 'booking_availability/version'

module BookingAvailability
  class << self
    attr_accessor :user_class
  end

  def self.setup
    yield self
  end
  # Your code goes here...
end
