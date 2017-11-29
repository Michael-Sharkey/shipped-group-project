class Job < ApplicationRecord

  belongs_to :user
  has_many :boats, through: :shipments


  validates :name, presence: true, uniqueness: true, uniqueness: { case_sensitive: false }, length: { minimum: 3}
  validates :cost, presence: true,  numericality: { only_integer: true, greater_than: 1000 }
  validates :description,   length: { minimum: 20}
end
