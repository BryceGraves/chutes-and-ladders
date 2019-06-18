class CreatesPlayer
  attr_accessor :name, :position, :player

  def initialize(name: "Unnamed Player")
    @name = name
    @position = 1
  end

  def build
    self.player = Player.new(name: name, position: position)
    player.position = position
    player
  end

  def create
    build
    result = player.save!
    @success = result
  end

end
