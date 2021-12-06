class SpaceStation < ApplicationRecord
  has_many :attachment_spaces, dependent: :destroy
  has_many :crew_members, dependent: :destroy
  has_many :components, through: :attachment_spaces
  validates :name, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true }
  validates :power, presence: true, numericality: { only_integer: true }
  after_create :generate_attachment_spaces

  def generate_attachment_spaces
    8.times do
      @attachment_space = AttachmentSpace.new
      @attachment_space.space_station = self
      @attachment_space.save!
    end
    @attachment_space = AttachmentSpace.new
    @attachment_space.space_station = self
    @attachment_space.component = Component.find(1)
    @attachment_space.save!
    3.times do
      @attachment_space = AttachmentSpace.new
      @attachment_space.space_station = self
      @attachment_space.save!
    end
  end

end
