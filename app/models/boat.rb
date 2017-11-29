class Boat < ApplicationRecord

  belongs_to :user
  belongs_to :shipment


  validates :name, presence: true, uniqueness: true, uniqueness: { case_sensitive: false }, length: { minimum: 3}
  validates :containers, presence: true, uniqueness: true, length: {maximum: 500}


end
