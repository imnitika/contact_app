require 'rails_helper'

RSpec.describe "ContactLists", type: :request do
  describe "GET /contact_lists" do
    it "works! (now write some real specs)" do
      get contact_lists_path
      expect(response).to have_http_status(200)
    end
  end
end
