class WelcomeController < ApplicationController
  def index
  	@players = Player.all
  	@matches = Match.order("date DESC").limit(5)
  end
end
