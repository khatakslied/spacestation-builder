class AttachmentSpace < ApplicationRecord
  belongs_to :space_station
  belongs_to :component, optional: true
end
