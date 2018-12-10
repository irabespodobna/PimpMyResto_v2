require 'rails_helper'

RSpec.describe "Autocompletes", type: :request do
  describe "GET /autocompletes" do
    it "works! (now write some real specs)" do
      get autocompletes_path
      expect(response).to have_http_status(200)
    end
  end
end
