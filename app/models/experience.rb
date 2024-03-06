class Experience < ApplicationRecord
  has_many :missions

  validates :company, presence: true
  validates :post, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

end
