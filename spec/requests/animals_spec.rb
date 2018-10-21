require 'rails_helper'

RSpec.describe "Animals", type: :request do
  describe "GET /animals" do
    it "Debe responder un 200" do
      get animals_path
      expect(response).to have_http_status(200)
    end
  end
end
