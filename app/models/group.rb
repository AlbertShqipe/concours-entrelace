class Group < ApplicationRecord
  has_many :participants, inverse_of: :group, dependent: :destroy
  accepts_nested_attributes_for :participants, allow_destroy: true

  validates :name, presence: true
end
