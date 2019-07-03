class CreatesGame
  attr_accessor :current_player, :name, :players, :game

  def initialize(name: "Unnamed Game")
    @current_player = 0
    @name = name
    @players = []
  end

  def build
    self.game = Game.new(current_player: current_player, name: name, players: players)
    game.spaces = GamesHelper::generate_spaces
    game
  end

  def create
    build
    game.save!
  end

end
