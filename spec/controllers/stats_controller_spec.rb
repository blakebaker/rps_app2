require 'spec_helper'

describe StatsController do

  describe "GET 'find'" do
    it "should be successful" do
      get 'find'
      response.should be_success
    end
  end

end
