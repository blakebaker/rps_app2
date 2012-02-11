class ThrowController < ApplicationController
  before do
	@defeat = {rock: :scissors, paper: :rock, scissors: :paper}
	@throws = @defeat.keys
  end
  
  def throw
  
  
  end

  def rock
  end

  def scissors
  end

end
