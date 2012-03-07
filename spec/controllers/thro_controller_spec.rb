require 'spec_helper'

describe ThroController do

  describe "GET 'throwing'" do
    it "should be successful" do
      get 'throwing'
      response.should be_success
    end
  end

end
