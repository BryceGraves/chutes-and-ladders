class Space < ApplicationRecord
  validates :destination, allow_nil: true, numericality: { only_integer: true, greater_than: 0, less_than: 101 }
  validates :space_type, presence: true, allow_blank: false, inclusion: { in: [ "empty", "chute", "ladder" ] }
end
