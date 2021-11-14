class CrewMember < ApplicationRecord
  belongs_to :space_station
  validates :name, presence: true
  validates :status, presence: true, inclusion: { in: ['working', 'sleeping', 'enjoying the stars', 'deceased'] }
end
