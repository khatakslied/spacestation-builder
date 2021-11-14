class Component < ApplicationRecord
  has_many :space_stations, through: :installments
  validates :image_url, presence: true
  COMPONENTTYPES =
    ['docking',
     'habitat',
     'right-solar',
     'laboratory',
     'left-solar',
     'telescope',
     'top-solar']
  validates :component_type, presence: true, inclusion: { in: COMPONENTTYPES }
  validates :room, presence: true
end
