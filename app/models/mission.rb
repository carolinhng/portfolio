class Mission < ApplicationRecord
  belongs_to :experience

  validates :mission, presence: true
end
