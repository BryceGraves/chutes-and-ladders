class CreatesGame
  attr_accessor :current_player, :name, :game

  def initialize(name: "Unnamed Game")
    @name = name
    @current_player = 0
  end

  def build
    self.game = Game.new(name: name, current_player: current_player)
    game.players = []
    game.spaces = GamesHelper::generate_spaces
    game
  end

  def create
    build
    result = game.save
  end

end
