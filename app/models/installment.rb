# 'Installation' is a reserved word. I am aware of the meaning of 'installment'.
class Installment < ApplicationRecord
  belongs_to :space_station
  belongs_to :component
end
