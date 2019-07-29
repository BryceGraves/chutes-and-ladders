class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    game_name = params[:game][:name]
    @game = Game.create(
      name: game_name,
      spaces: GamesHelper.generate_spaces
    )

    if @game.errors.any?
      render(:new)
      return
    end

    redirect_to action: 'show', id: @game.id
  end
end
