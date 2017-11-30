class Job < ApplicationRecord

  belongs_to :user
  has_and_belongs_to_many :boats


  validates :name, presence: true, uniqueness: true, uniqueness: { case_sensitive: false }, length: { minimum: 3}
  validates :cost, presence: true,  numericality: { only_integer: true, greater_than: 1000 }
  validates :description,   length: { minimum: 20}
end
