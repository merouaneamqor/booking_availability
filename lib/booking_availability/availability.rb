# frozen_string_literal: true

module BookingAvailability
  module Availability
    extend ActiveSupport::Concern

    included do
      belongs_to :bookable, polymorphic: true
    end

    def available?(start_time, end_time)
      # Logic to check if the object is available during the specified time
    end
  end
end
