# frozen_string_literal: true

module BookingAvailability
  module Bookable
    extend ActiveSupport::Concern

    included do
      has_many :availabilities, class_name: 'BookingAvailability::Availability'
      has_many :bookings, class_name: 'BookingAvailability::Booking'
    end
  end
end
