class Player < ApplicationRecord
  validates :name, presence: true, allow_blank: false
  validates :position, presence:true, numericality: { only_integer: true }

  def calculate_position(roll)
    self.position + roll
  end

  def move(roll)
    new_position = calculate_position(roll)

    if valid_position?(new_position)
      set_position(new_position)
    end
  end

  def set_position(board_position)
    self.position = board_position
  end

  private

  def valid_position?(position)
    (0 < position) and (position < 101)
  end

end
