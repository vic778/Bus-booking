require "rails_helper"

RSpec.describe BusesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/buses").to route_to("buses#index")
    end

    it "routes to #new" do
      expect(get: "/buses/new").to route_to("buses#new")
    end

    it "routes to #show" do
      expect(get: "/buses/1").to route_to("buses#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/buses/1/edit").to route_to("buses#edit", id: "1")
    end

    it "routes to #create" do
      expect(post: "/buses").to route_to("buses#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/buses/1").to route_to("buses#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/buses/1").to route_to("buses#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/buses/1").to route_to("buses#destroy", id: "1")
    end
  end
end
