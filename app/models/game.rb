class Game < ApplicationRecord
  has_many :players
  has_many :spaces
  validates :turn, allow_blank: false, presence: true, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validates :name, allow_blank: false, presence: true

  def change_turn
    self.turn += 1
  end

  def current_player
    players[turn % players.size]
  end

  def roll
    current_player.move(Dice.roll)
    update_position_for(current_player)
    change_turn
  end

  def update_position_for(current_player)
    space = player_space(current_player)
    return unless space.destination

    current_player.position = space.destination
  end

  def winner
    players.select { |player| player.position == 100 }.first
  end

  def winner?
    !winner.nil?
  end

  private

  def player_space(current_player)
    spaces[current_player.read_attribute(:position) - 1]
  end
end
