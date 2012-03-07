class StatsController < ApplicationController
  def find
	@win = session[:win]
	@lose = session[:loss]
	@tie = session[:tie]
  end

end
