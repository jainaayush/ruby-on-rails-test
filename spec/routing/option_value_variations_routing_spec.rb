require "rails_helper"

RSpec.describe OptionValueVariationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/option_value_variations").to route_to("option_value_variations#index")
    end

    it "routes to #new" do
      expect(get: "/option_value_variations/new").to route_to("option_value_variations#new")
    end

    it "routes to #show" do
      expect(get: "/option_value_variations/1").to route_to("option_value_variations#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/option_value_variations/1/edit").to route_to("option_value_variations#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/option_value_variations").to route_to("option_value_variations#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/option_value_variations/1").to route_to("option_value_variations#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/option_value_variations/1").to route_to("option_value_variations#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/option_value_variations/1").to route_to("option_value_variations#destroy", id: "1")
    end
  end
end
