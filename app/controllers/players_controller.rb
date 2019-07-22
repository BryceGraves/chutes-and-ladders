class PlayersController < ApplicationController
  before_action :set_game, only: [:new, :create]

  def new
    @player = Player.new
  end

  def create
    name = params[:player][:name]
    game = Game.find(@game_id)
    @player = Player.create(name: name, game: game)

    if @player.errors.any?
      render :new
      return
    end

    redirect_to controller: 'games', action: 'show', id: @game_id
  end

  private

  def set_game
    @game_id = params[:game_id]
  end
end
