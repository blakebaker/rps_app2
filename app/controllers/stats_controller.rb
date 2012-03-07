class StatsController < ApplicationController
  def find
	@win = session[:wins]
	@lose = session[:lose]
	@tie = session[:tie]
  end

end
