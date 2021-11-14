class SpaceStation < ApplicationRecord
  has_many :installments, dependent: :destroy
  has_many :crew_members, dependent: :destroy
  has_many :components, through: :installments
  validates :name, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true }
  validates :power, presence: true, numericality: { only_integer: true }
end
