class Booking < ActiveRecord::Base
  belongs_to :guest
  belongs_to :location
  has_many :extensions, dependent: :destroy
  has_many :relocations, dependent: :destroy

  def add_extension!(new_end_date, reason, message=nil)
  end

  def add_relocation!(new_location_id, reason, message=nil)
  end

  def get_checkout_time
  end

  def get_location
  end
end
