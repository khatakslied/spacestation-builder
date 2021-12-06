class SpaceStation < ApplicationRecord
  has_many :installments, dependent: :destroy
  has_many :crew_members, dependent: :destroy
  has_many :components, through: :installments
  validates :name, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true }
  validates :power, presence: true, numericality: { only_integer: true }
  after_create :generate_attachment_spaces

  def generate_attachment_spaces
    12.times do
      @attachment_space = AttachmentSpace.new
      @attachment_space.space_station = self
      @attachment_space.save!
    end
  end
end
