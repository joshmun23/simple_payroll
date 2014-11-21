require 'rails_helper'

RSpec.describe "Paychecks", :type => :request do
  describe "GET /paychecks" do
    it "works! (now write some real specs)" do
      get paychecks_path
      expect(response).to have_http_status(200)
    end
  end
end
