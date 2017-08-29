class Relocation < ActiveRecord::Base
  belongs_to :booking

  enum reason: %w(late_service, damages, pests, request, other)
end
