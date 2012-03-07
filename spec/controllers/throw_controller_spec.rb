require 'spec_helper'

describe ThrowController do
  describe "GET 'throw/:type'" do
    it "should be successful" do
      match 'throw/:type'
      response.should be_success
    end
  end
end
