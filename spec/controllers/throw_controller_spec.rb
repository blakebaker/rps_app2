require 'spec_helper'

describe ThrowController do
  describe "GET 'throwing'" do
    it "should be successful" do
      get 'throwing'
      response.should be_success
    end
  end
end
