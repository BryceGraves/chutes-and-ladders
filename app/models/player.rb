class Player < ApplicationRecord
  belongs_to :game

  START_POSSITION = 1
  END_POSSITION = 100

  validates :name, presence: true, allow_blank: false
  validates :position, presence: true, numericality: { only_integer: true }

  MAX_POSITION = 100

  def calculate_position(roll)
    position + roll
  end

  def move(roll)
    new_position = calculate_position(roll)
    return unless valid_position?(new_position)

    self.position = new_position
  end

  private

  def valid_position?(position)
    position.between?(START_POSSITION, END_POSSITION)
  end
end
