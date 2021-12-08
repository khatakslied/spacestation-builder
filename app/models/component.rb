class Component < ApplicationRecord
  has_many :space_stations, through: :attachment_spaces
  validates :image_url, presence: true
  COMPONENTTYPES =
    ['docking',
     'habitat',
     'laboratory',
     'left-solar',
     'right-solar',
     'telescope',
     'top-solar']
  validates :component_type, presence: true, inclusion: { in: COMPONENTTYPES }
  validates :room, presence: true
end
