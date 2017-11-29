class Job < ApplicationRecord

  belongs_to :user
  has_many :boats, through: :shipments
  
end
