class WelcomeController < ApplicationController
  def index
  	@players = Player.all
  	@matches = Match.all
  end
end
