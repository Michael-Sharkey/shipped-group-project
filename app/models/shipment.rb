class Shipment < ApplicationRecord
  has_many :boats
  belongs_to :job
  belongs_to :user
end
