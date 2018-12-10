require "rails_helper"

RSpec.describe AutocompletesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/autocompletes").to route_to("autocompletes#index")
    end

    it "routes to #new" do
      expect(:get => "/autocompletes/new").to route_to("autocompletes#new")
    end

    it "routes to #show" do
      expect(:get => "/autocompletes/1").to route_to("autocompletes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/autocompletes/1/edit").to route_to("autocompletes#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/autocompletes").to route_to("autocompletes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/autocompletes/1").to route_to("autocompletes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/autocompletes/1").to route_to("autocompletes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/autocompletes/1").to route_to("autocompletes#destroy", :id => "1")
    end
  end
end
