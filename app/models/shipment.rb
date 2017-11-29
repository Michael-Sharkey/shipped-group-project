class Shipment < ApplicationRecord
  has_many :boats
  belongs_to :job
end
