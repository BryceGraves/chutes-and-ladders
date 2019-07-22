class PlayersController < ApplicationController
  def new
    @game_id = params[:game_id]
    @player = Player.new
  end

  def create
    @player_workflow = CreatesPlayer.new(
      name: params[:player][:name],
      game_id: params[:game_id]
    )
    
    begin
      @player_workflow.create  
    rescue StandardError => err
      @player = @player_workflow.player
      render :new
      return
    end
    
    redirect_to controller: 'games', action: 'show', id: params[:game_id]
  end

end
