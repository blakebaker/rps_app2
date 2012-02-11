class ThrowController < ApplicationController
  before_filter do
	@defeat = {rock: :scissors, paper: :rock, scissors: :paper}
	@throws = @defeat.keys
  end
  
  def throw
  
  
  end

  def paper
  end
  
  def rock
  end

  def scissors
  end

end
