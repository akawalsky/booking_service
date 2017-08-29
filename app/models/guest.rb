class Guest < ActiveRecord::Base
  has_many :bookings, dependent: :destroy

  def add_booking!(location_id, start_date, end_date)
  end
end
