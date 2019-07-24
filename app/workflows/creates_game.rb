class CreatesGame
  attr_accessor :turn, :name, :players, :game

  def initialize(name: "Unnamed Game")
    @turn = 0
    @name = name
    @players = []
  end

  def build
    self.game = Game.new(turn: turn, name: name, players: players)
    game.spaces = GamesHelper.generate_spaces
    game
  end

  def create
    build
    game.save!
  end
end
