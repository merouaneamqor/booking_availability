# frozen_string_literal: true

module BookingAvailability
  class Booking
    include Mongoid::Document

    belongs_to :bookable, polymorphic: true
    belongs_to :booker, class_name: BookingAvailability.user_class, optional: true

    field :start_time, type: DateTime
    field :end_time, type: DateTime

    validates :start_time, :end_time, presence: true
    validate :availability

    private

    def availability
      return if bookable.availabilities.where(:start_time.lte => start_time, :end_time.gte => end_time).exists?

      errors.add(:base, 'This booking time is not available.')
    end
  end
end
