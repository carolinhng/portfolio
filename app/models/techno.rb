class Techno < ApplicationRecord
  has_many :project_technos
  validates :techno, presence: true
end
