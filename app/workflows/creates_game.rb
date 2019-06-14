class CreatesGame
  attr_accessor :name, :game

  def initialize(name: "")
    @name = name
  end

  def build
    self.game = Game.new(name: name)
    game.players = []
    game.spaces = GamesHelper::generate_spaces
    game
  end

  def create
    build
    result = game.save
  end

end
