class PlayController < ApplicationController
  def index
    @game = Game.find(params[:game_id])
  end

    #TODO: add error handling for both saves
  #Not sure how this will be done
  def update
    @game = Game.find(params[:game_id])
    current_player = @game.current_player
    @game.roll
    @game.save!
    current_player.save!
    redirect_to request.referrer
  end

end