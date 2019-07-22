class CreatesPlayer
  attr_accessor :name, :position, :player

  def initialize(name: "", game_id: -1)
    @name = name
    @position = 1
    @game_id = game_id
  end

  def build
    self.player = Player.new(name: name, position: position)
    player.position = position
    player
  end

  def create
    game = Game.find(@game_id)
    game.players << build
    player.save!
  end

end
