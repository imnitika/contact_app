require "rails_helper"

RSpec.describe ContactListsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/contact_lists").to route_to("contact_lists#index")
    end

    it "routes to #show" do
      expect(:get => "/contact_lists/1").to route_to("contact_lists#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/contact_lists").to route_to("contact_lists#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/contact_lists/1").to route_to("contact_lists#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/contact_lists/1").to route_to("contact_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/contact_lists/1").to route_to("contact_lists#destroy", :id => "1")
    end
  end
end
