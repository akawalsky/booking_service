class Extension < ActiveRecord::Base
  belongs_to :booking

  enum reason: %w(love_it, flight_cancelled, family_or_friends, personal_injury, other)
end
