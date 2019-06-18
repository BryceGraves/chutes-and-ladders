class Game < ApplicationRecord

  has_many :players
  has_many :spaces
  validates :name, allow_blank: false, presence: true
  validates :current_player, allow_blank: false, presence: true, numericality: { greater_than_or_equal_to: 0, only_integer: true }

  def roll
    current_player = get_current_player
    current_player.move(Dice::roll)
    update_position_for(current_player)
    change_turn
  end

  def change_turn
    self.current_player += 1
  end

  def get_current_player
    self.players[current_player % self.players.size]
  end

  def update_position_for(current_player)
    space = spaces[current_player.read_attribute(:position) - 1]

    if space.destination
      current_player.position = space.destination
    end
  end

end
