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
    @game_workflow = CreatesGame.new(
      name: params[:game][:name]
    )

    begin
      @game_workflow.create  
    rescue StandardError => err
      @game = @game_workflow.game
      render :new
      return
    end
    
    redirect_to action: 'show', id: @game_workflow.game.id
  end

end
