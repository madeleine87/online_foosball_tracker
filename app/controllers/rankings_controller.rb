class RankingsController < ApplicationController

  # GET /rankings
  # GET /rankings.json
  def index
    @players = Player.all
  end

end
