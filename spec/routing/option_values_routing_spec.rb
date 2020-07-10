require "rails_helper"

RSpec.describe OptionValuesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/option_values").to route_to("option_values#index")
    end

    it "routes to #new" do
      expect(get: "/option_values/new").to route_to("option_values#new")
    end

    it "routes to #show" do
      expect(get: "/option_values/1").to route_to("option_values#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/option_values/1/edit").to route_to("option_values#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/option_values").to route_to("option_values#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/option_values/1").to route_to("option_values#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/option_values/1").to route_to("option_values#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/option_values/1").to route_to("option_values#destroy", id: "1")
    end
  end
end
