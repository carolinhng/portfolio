class Project < ApplicationRecord
  belongs_to :user
  has_many :project_technos
  validates :name, presence: true
  validates :description, presence: true
end
